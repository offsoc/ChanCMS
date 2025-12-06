class CategoryService extends Chan.Service {
  constructor() {
    super(Chan.knex, "cms_category");
  }

  // 增
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
      const res = await this.db(this.tableName).where("id", "=", id).del();
      return { code: 200, data: res };
    } catch (err) {
      console.error(err);
      return {
        code: 500,
        msg: "删除失败",
        data: { sql: err.sql, sqlMessage: err.sqlMessage },
      };
    }
  }

  // 改
  async update(body) {
    const { id, ...params } = body;
    try {
      const res = await this.db(this.tableName)
        .where("id", "=", id)
        .update(params);
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 查全部栏目
  async find() {
    try {
      const res = await super.find({ sort: { orderBy: "asc" } });
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 查栏目
  async findId(id) {
    try {
      const data = await this.db(this.tableName)
        .where("id", "=", id)
        .select([
          "id",
          "pid",
          "seoTitle",
          "seoKeywords",
          "seoDescription",
          "name",
          "pinyin",
          "path",
          "description",
          "type",
          "url",
          "orderBy",
          "target",
          "status",
          "mid",
          "listView",
          "articleView",
        ])
        .first();
      return data;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 查子栏目
  async findSubId(id) {
    try {
      const result = await this.db(this.tableName).where("pid", "=", id).select();
      return result;
    } catch (err) {
      console.error(err);
      throw err;
    }
  }

  // 搜索栏目
  async search(key) {
    try {
      let query = this.db(this.tableName)
        .leftJoin("cms_model", `${this.tableName}.mid`, "cms_model.id")
        .select(`${this.tableName}.*`, "cms_model.model")
        .orderBy(`${this.tableName}.orderBy`, "asc");

      if (key) {
        query = query.whereRaw(
          `${this.tableName}.name COLLATE utf8mb4_general_ci LIKE ?`,
          [`%${key}%`]
        );
      }

      const res = await query;
      return res;
    } catch (err) {
      console.error(err);
      throw err;
    }

    // try {
    //   const res = key
    //     ? await this.db(this.tableName)
    //         .whereRaw("name COLLATE utf8mb4_general_ci LIKE ?", [`%${key}%`])
    //         .orderBy("orderBy", "asc")
    //     : await this.db(this.tableName).orderBy("orderBy", "asc");
    //   return res;
    // } catch (err) {
    //   console.error(err);
    //   throw err;
    // }
  }
}

export default new CategoryService();
