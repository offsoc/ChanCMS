const {
  config,
  helper: { getToken, formatDateFields },
  common: { success },
} = Chan;
import loginLog from "../service/loginLog.js";
class LoginLogController extends Chan.Controller {
  constructor() {
    super();
  }
  // 增
  async create(req, res, next) {
    try {
      const token = req.headers.token;
      const user = await getToken(token, config.JWT_SECRET);
      let body = {
        uid: user.uid,
        ...req.body,
      };
      const data = await loginLog.create(body);
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 删除
  async delete(req, res, next) {
    try {
      const data = await loginLog.delete();
      res.json({ ...success, data: data });
    } catch (err) {
      next(err);
    }
  }

  // 列表
  async list(req, res, next) {
    try {
      const { pageSize, cur } = req.query;
      let result = await loginLog.list(cur, pageSize);
      result.data.list = formatDateFields(result.data.list);
      res.json({ ...success, data: result.data });
    } catch (err) {
      next(err);
    }
  }
}

export default new LoginLogController();
