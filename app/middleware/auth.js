const {
  config: { JWT_SECRET, JWT_EXPIRES_IN, JWT_REFRESH, APP_DEBUG },
  helper: { setToken, getToken },
} = Chan;
import SysMenu from "../modules/base/service/SysMenu.js";

const REFRESH_THRESHOLD = 30 * 60; // 30分钟
// 统一响应处理函数，减少重复代码
const sendResponse = (res, code, message, data = null) => {
  res.json({ code, msg: message, data });
};
export default () => {
  return async (req, res, next) => {
    try {
      const token = req.headers.token || "";

      // 2. 检查token是否存在
      if (!token) {
        return sendResponse(res, 401, "token缺失");
      }
      // 3. 验证并解析token
      const { username, uid, f, i, exp } = await getToken(token, JWT_SECRET);

      // 4. 验证用户基本信息
      if (!username || !uid || !f || !i || !exp) {
        return sendResponse(res, 201, "请登录");
      }

      // 5. 获取并验证设备信息
      const { _f, _i } = req.cookies;

      if (_f !== f || _i !== i) {
        return sendResponse(res, 202, "登录设备异常，请重新登录！");
      }

      // 6. 验证token是否过期，如果过期，则刷新token
      if (JWT_REFRESH) {
        const currentTime = Math.floor(Date.now() / 1000);
        const remainingTime = exp - currentTime;

        if (remainingTime <= 0) {
          return sendResponse(res, 401, "认证失败：token已过期");
        } else if (remainingTime < REFRESH_THRESHOLD) {
          res.cookie(
            "token",
            setToken({ username, uid }, JWT_SECRET, JWT_EXPIRES_IN),
            { httpOnly: true }
          );
        }
      }

      // 7. 验证通过，将用户信息存入 req 中
      req.user = { username, uid };

      // 8. 计算当前请求的权限标识（只计算一次）
      const perms = req.originalUrl.split('?')[0].split("/").filter(Boolean).join(":");

      // 确保权限数组存在
      if (!req.user.perms) {
        const permsRes = await SysMenu.allPerms(uid);
        req.user.perms =  permsRes.map(item => item.perms)           // 必须提取字段
        .filter(perm => typeof perm === 'string' && perm.trim().length > 0); // 至少过滤空值;
      }
      // 权限检查：精确匹配（最安全）
      const hasPermission = req.user.perms.some((item) => item === perms);
      if (!hasPermission && perms !== 'base:menu:allRouter') {
       console.log("error-->", perms);
       return res.json({ code: 402, msg: "暂无权限" });
      }

      // 9. 继续处理请求
      await next();
    } catch (error) {
      console.error("认证错误:", error);
      // 区分不同类型的JWT错误
      const errorMap = {
        TokenExpiredError: "token已过期，请重新登录",
        JsonWebTokenError: "无效的token",
        NotBeforeError: "token尚未生效",
      };
      const message = errorMap[error.name] || error.message || "认证失败";
      sendResponse(res, 401, message);
    }
  };
};
