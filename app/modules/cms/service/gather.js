const {
  helper: { request },
} = Chan;
import { isValidTargetUrl } from "../../../middleware/guard.js";

class GatherService extends Chan.Service {
  constructor() {
    super(Chan.knex, "plus_gather");
  }

  async common(url) {
    try {
      if (!isValidTargetUrl(url)) {
        return "不允许访问的目标地址";
      }
      const res = await request(url);
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 增加
  async create(body) {
    try {
      const res = await this.insert(body);
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 删
  async delete(id) {
    try {
      const res = await super.delete({ id });
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 修改
  async update(body) {
    const { id, ...params } = body;
    try {
      const res = await super.update({ query: { id }, params });
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 列表
  async list(cur = 1, pageSize = 10) {
    const page = Math.max(1, parseInt(cur));
    const limit = Math.min(pageSize, 100); // 防止过大 pageSize
    const offset = (page - 1) * limit;

    try {
      const [{ count }] = await this.db(this.tableName).count("id as count");
      const list = await this.db(this.tableName)
        .select(
          "plus_gather.id",
          "plus_gather.taskName",
          "plus_gather.targetUrl",
          "plus_gather.parseData",
          "plus_gather.cid",
          "plus_gather.status",
          "plus_gather.createdAt",
          "plus_gather.updatedAt",
          "cms_category.name as category"
        )
        .innerJoin("cms_category", "plus_gather.cid", "cms_category.id")
        .limit(limit)
        .offset(offset)
        .orderBy("plus_gather.id", "desc");

      const total = Math.ceil(count / limit);

      return {
        count,
        total,
        current: page,
        list,
      };
    } catch (err) {
      console.error(`[CollectService.list] 查询失败`, err);
      throw { code: "DB_QUERY_ERROR", message: err.message };
    }
  }

  // 查
  async detail(id) {
    try {
      const res = await this.findById({
        query: { id },
        field: ["*"],
      });
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 搜索
  async search(key = "", cur = 1, pageSize = 10) {
    try {
      let res = await this.query({
        current: cur,
        pageSize: pageSize,
        query: key ? { taskName: { like: `%${key}%` } } : {},
        field: ["*"],
      });
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }
}

export default new GatherService();
