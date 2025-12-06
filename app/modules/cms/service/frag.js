const {
  helper: { arrToObj },
} = Chan;

class FragService extends Chan.Service {
  constructor() {
    super(Chan.knex, "cms_frag");
  }

  // 新增
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

  // 获取全量frag，默认100个cur = 1,
  async list(cur = 1) {
    try {
      const total = await this.db(this.tableName).count("id", { as: "count" });
      const offset = parseInt((cur - 1) * this.limit);
      const list = await this.db
        .select(["name", "mark", "content"])
        .from(this.tableName)
        .limit(this.limit)
        .offset(offset)
        .orderBy("id", "desc");

      const frags = arrToObj(list, "name", "content");
      return frags;
      // const count = total[0].count || 1;
      // return {
      //   count: count,
      //   total: Math.ceil(count / pageSize),
      //   current: +cur,
      //   list: frags,
      // };
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 查
  async detail(id) {
    try {
      const res = await this.findById({
        query: { id },
        field: ["id", "name", "mark", "content", "type"],
      });
      return res.data;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 搜索
  async search(key = "", cur = 1, pageSize = 10) {
    try {
      // 查询个数
      const total = key
        ? await this.db(this.tableName)
            .whereRaw("name COLLATE utf8mb4_general_ci LIKE ?", [`%${key}%`])
            .count("id", { as: "count" })
        : await this.db(this.tableName).count("id", { as: "count" });
      // 查询个数
      const offset = parseInt((cur - 1) * pageSize);
      const list = key
        ? await this.db(this.tableName)
            .select(["id", "name", "mark", "updatedAt"])
            .whereRaw("name COLLATE utf8mb4_general_ci LIKE ?", [`%${key}%`])
            .limit(pageSize)
            .offset(offset)
            .orderBy("id", "desc")
        : await this.db(this.tableName)
            .select(["id", "name", "mark", "updatedAt"])
            .limit(pageSize)
            .offset(offset)
            .orderBy("id", "desc");

      const count = total[0].count || 1;
      return {
        count: count,
        total: Math.ceil(count / pageSize),
        current: +cur,
        list: list,
      };
    } catch (err) {
      console.error(err);
      throw err;
    }
  }
}

export default new FragService();
