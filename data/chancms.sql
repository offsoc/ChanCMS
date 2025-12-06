/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : chancms

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 30/11/2025 17:23:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '栏目id',
  `subCid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它栏目id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `shortTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短标题',
  `tagId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签id',
  `attr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '1头条 2推荐 3轮播 4热门',
  `articleView` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情页模板',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章简述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `status` tinyint(2) NULL DEFAULT 0 COMMENT '0 发布 1 不发布',
  `pv` int(10) NULL DEFAULT 0 COMMENT '浏览量',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外链',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES (1, 2, '', 'ChanCMS内容管理系统', '', '2', '', '', '', '', 'ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。', '', '<p>ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。</p>\n<ul>\n<li>自研。基于自研chanjs轻量级mvc框架实现，轻量、灵活、稳定、高性能、可持续。</li>\n<li>SEO。专注于<code>seo</code>,伪静态<code>html</code>和拼音导航，灵活设置关键词和描述。</li>\n<li>安全。基于<code>knex</code>,高防<code>sql</code>注入，接口权限校验，为安全提供保障。</li>\n<li>灵活。碎片功能，支持零碎文案配置，方便各类灵活文案配置。</li>\n<li>高扩展。支持扩展模型，字段配置，可动态生成表，超强扩展。</li>\n<li>模块化。一切模块相互独立，互不干扰。</li>\n<li>插件化。灵活开发，支持完整功能模块。</li>\n<li>无头cms，为多端提供接口支持。</li>\n</ul>', 0, 21, '', '2024-09-13 22:49:28', '2025-11-22 12:47:59');
INSERT INTO `cms_article` VALUES (2, 3, '', 'ChanCMS山水图：风景图', '', '2', '', '', '', '', '山峰树林湖泊', '/public/cover/04.jpg', '<p><img src=\"https://q5.itc.cn/q_70/images03/20240706/62869b54ec3c4ea5a842b97ac9722630.jpeg\" alt=\"\" width=\"2062\" height=\"1200\"></p>', 0, 54, '', '2024-09-13 22:55:57', '2025-11-22 19:11:45');
INSERT INTO `cms_article` VALUES (3, 4, '', 'ChanCMS后台基本操作', '', '2', '', '', '', '', 'ChanCMS后台基本操作', '', '<p><iframe src=\"//player.bilibili.com/player.html?isOutside=true&aid=877077167&bvid=BV17N4y1Y7WC&cid=1362009352&p=1\" height=\"520\" frameborder=\"no\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 0, 34, '', '2024-09-13 22:59:58', '2025-11-30 16:36:17');
INSERT INTO `cms_article` VALUES (5, 7, '', 'ChanCMS简介', '', '2', '', '', '', '', 'ChanCMS简介', '', '<p><strong>ChanCMS内容管理系统</strong></p>\n<p>ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。</p>\n<p><strong>系统特色</strong></p>\n<p>自研。基于自研chanjs轻量级mvc框架实现，轻量、灵活、稳定、高性能、可持续。</p>\n<p>SEO。专注于seo,伪静态html和拼音导航，灵活设置关键词和描述。</p>\n<p>安全。基于knex,高防sql注入，接口权限校验，为安全提供保障。</p>\n<p>灵活。碎片功能，支持零碎文案配置，方便各类灵活文案配置。</p>\n<p>高扩展。支持扩展模型，字段配置，可动态生成表，超强扩展。</p>\n<p>模块化。一切模块相互独立，互不干扰。</p>\n<p>插件化。灵活开发，支持完整功能模块。</p>\n<p>无头cms，为多端提供接口支持。</p>\n<p><strong>软件架构</strong></p>\n<p>后台管理FE</p>\n<pre class=\"language-markup\"><code>vue3\nvue-router\npina\nelement-plus\nvite4\ntinymce</code></pre>\n<p>服务端技术栈</p>\n<pre class=\"language-markup\"><code>nodejs v20.16.0+\nexpress 4.18+\nmysql v5.7.26\nknex (sql操作)\nart-tempate v4.13.2+\npm2 v5.2.2\njwt\npm2 (prd)\nnodemon (dev)</code></pre>', 0, 84, '', '2024-09-13 23:06:30', '2025-11-22 21:09:30');
INSERT INTO `cms_article` VALUES (6, 3, '', 'ChanCMS山水图：桂林山水', '', '2', '', '', '', '', '', '/public/cover/06.jpg', '<p><img src=\"https://img-qn.51miz.com/preview/element/00/01/30/75/E-1307587-924E2CBE.png!/quality/90/unsharp/true/compress/true/format/png/fwfh/900x640\" alt=\"\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-pc-sign.douyinpic.com/tos-cn-i-0813c001/ogKHZvfQQ30BGWXEzfeP2BQ70OA5AA7AAdyJgF~tplv-dy-aweme-images-v2:3000:3000:q75.webp?biz_tag=aweme_images&from=327834062&s=PackSourceEnum_AWEME_DETAIL&sc=image&se=false&x-expires=1729130400&x-signature=vl4RUOePzX7s4npn4oARkHH6EAc%3D\" alt=\"\" width=\"896\" height=\"1536\"></p>', 0, 27, '', '2024-09-17 10:53:54', '2025-11-22 19:46:07');
INSERT INTO `cms_article` VALUES (7, 3, '', 'ChanCMSAIGC图片美女', '', '2', '', '', '', '', '', '/public/cover/10.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p9-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/31f5581b6dee463bb23c6f4a31d1b204~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=AP23D4sBKcal3LurrbHp9WWra8M%3D&format=.png\" alt=\"\"></p>', 0, 28, '', '2024-09-27 10:06:09', '2025-11-22 19:17:34');
INSERT INTO `cms_article` VALUES (8, 3, '', 'ChanCMS图片美女', '', '2', '', '', '', '', '', '/public/cover/06.jpg', '<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/b9255497ccf94fcf9a1c873eda23b78f~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=xU2jY9QGyZY5ZeG56f%2BZgRyJ4Yk%3D&format=.png\" alt=\"\"></p>', 0, 32, '', '2024-09-27 10:07:52', '2025-11-30 16:36:20');
INSERT INTO `cms_article` VALUES (9, 3, '', 'ChanCMS图片美女', '', '2', '', '', '', '', '', '/public/cover/07.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/9266d858c987459a96ff3a1847d8c9fb~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=%2F%2BWXysOaMFc6Gm%2Fkiv%2FyT2d%2FoAQ%3D&format=.png\" alt=\"\"></p>', 0, 47, '', '2024-09-27 10:37:12', '2025-11-30 15:38:51');
INSERT INTO `cms_article` VALUES (11, 6, '', 'ChanCMS欢迎使用ChanCMS系统', '', '2', '', 'special.html', '', '', '', '', '<section class=\"banner row justify-center\">\n<h1 class=\"chanyue text-c\">ChanCMS</h1>\n<p class=\"f-23 text-c mt-20\">基于express+mysql的一款轻量级高质量cms管理系统</p>\n<p class=\"text-c mt-20\"><span class=\"el-button el-button--primary is-round mr-10 c-fff\"><a href=\"https://www.chancms.top/docs/index.html\" target=\"_blank\" rel=\"noopener\">开始使用</a> </span><span class=\"el-button el-button--primary is-round c-fff\"><a href=\"https://gitee.com/yanyutao0402/chanyue-cms\" target=\"_blank\" rel=\"noopener\">码云</a></span></p>\n</section>\n<section class=\"main center flex justify-between flex-wrap pd-30\">\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">大道至简</h3>\n<p class=\"f-16 mb-20\">基于express自研mvc框架， 优秀的稳定性，可持续迭代，拒绝复杂设计模式。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">独有特色</h3>\n<p class=\"f-16 mb-20\">轻量、灵活、自研、稳定、高性能。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">SEO标准</h3>\n<p class=\"f-16 mb-20\">专注于seo功能，伪静态、自定义导航、灵活设置关键词和描述。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">灵活</h3>\n<p class=\"f-16 mb-20\">万能碎片功能，支持零碎文案配置，把灵活发挥到极致。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">高扩展</h3>\n<p class=\"f-16 mb-20\">无头cms和传统模板共存，多端渲染。灵活模块开发，开发多领域网站。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">高持续性</h3>\n<p class=\"f-16 mb-20\">多年深入nodejs技术栈，一心致力于自研开发，前后端代码逐行开发，可持续性强。</p>\n</div>\n</section>\n<footer class=\"pd-20\">\n<p class=\"mt-30 text-c f-14\">&copy;CopyRight ChanCMS</p>\n<p class=\"mt-5 text-c f-12\"><a href=\"https://beian.miit.gov.cn/\" target=\"_blank\" rel=\"external nofollow noopener\">皖ICP备2024033678号-1</a></p>\n</footer>', 0, 162, '', '2024-10-02 13:58:53', '2025-11-30 16:36:12');
INSERT INTO `cms_article` VALUES (13, 5, '', 'ChanCMS v3.0.6下载', '', '2', '', '', '', '', '', '', '<p>ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。</p>', 0, 70, '', '2024-10-02 15:40:46', '2025-11-30 16:36:14');
INSERT INTO `cms_article` VALUES (14, 2, '', 'ChanCMS', '', '2', '', 'article-pdf.html', '', '', '', '', '<p>/public/doc/1.pdf</p>', 0, 54, '', '2024-11-09 18:40:34', '2025-11-21 22:44:14');
INSERT INTO `cms_article` VALUES (15, 9, '', 'ChanCMS于作者', '', '2', '', '', '', '', '关于作者测试单页', '', '<p>关于作者测试单页</p>', 0, 213, '', '2024-12-05 23:26:59', '2025-11-30 16:36:10');
INSERT INTO `cms_article` VALUES (18, 8, '', 'ChanCMS早间新闻—2024-12-08', '', '2', '', '', '', '', '123', '', '<p>123</p>', 0, 29, '', '2024-12-09 23:16:07', '2025-11-22 12:14:07');
INSERT INTO `cms_article` VALUES (21, 8, '', 'ChanCMS一条鱼如何“接二连三”', '', '2', '', NULL, '', '', '  凌晨2点刚过，王金友就赶到自家鱼塘忙着捕鱼出货了。', '', '  <p>凌晨2点刚过，王金友就赶到自家鱼塘忙着捕鱼出货了。</p> <p>两个小时左右，3万来斤黄金鲫就经由水路运抵兴化市沙沟镇上的鱼行，近18万元卖鱼款很快到账。随着早市开场，从各个塘口汇聚而来的鲜鱼将发往农副市场、食品企业、景区饭店等处。</p> <p>兴化水网纵横，渔业发达，是江苏著名的“鱼米之乡”。当地的“一条鱼”，不仅富了养殖业，兴了加工业，也带动了旅游业发展，成了江苏农特产“接二连三”融合发展的缩影。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL1724282105015SPVOL0QXRZ.jpg\" width=\"600\" height=\"338\" alt=\"王金友家的鱼塘配备了自动投饵机。人民网 范尧摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">王金友家的鱼塘配备了自动投饵机。人民网 范尧摄</span></p> <p><strong>一条鱼，养在水中富民增收</strong></p> <p>“如果不是今天捕鱼，现在投饵根本不出家门，直接手机操作，还可以看到鱼塘的实时画面。”王金友说。</p> <p>作为有着30多年经验的养鱼户，以前最让王金友头疼的就是喂鱼。一袋袋菜籽饼搬到船上，用铁锹拌匀，一锹锹撒到水塘，每天成百上千斤的鱼食，“哪怕是冬季，一到喂鱼时那汗出的，衣服就没有干过。”</p> <p>如今，鱼塘全部装上了自动投饵机，定时定量投喂，王金友感慨：“现在承包400亩鱼塘，一年能卖600多万元，从来没觉得养鱼像这样轻松。”</p> <p>作为主打农产品，兴化市淡水鱼养殖规模常年维持在16万亩。当地以淡水鱼、大闸蟹为主的水产品年产量超30万吨，连续34年位居江苏省内陆渔业县级之首，渔业经济年产值达260多亿元。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL1724282118793UALTZ2ZRGW.jpg\" width=\"600\" height=\"450\" alt=\"当地企业展柜里摆放着部分以鱼为原料开发的食品。人民网 王丹丹摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">当地企业展柜里摆放着部分以鱼为原料开发的食品。人民网 王丹丹摄</span></p> <p><strong>一条鱼，生产线上吃干榨净</strong></p> <p>早上7点，5辆厢式货车陆续驶入兴化经济开发区的大泽水产制品有限公司。这趟运来的5万多斤鲢鱼，是渔业经纪人姜绍喜一早从兴化各塘口收来的。</p> <p>活鱼经传送带进入车间，生产线启动作业，80多位工人依次进行分级、打鳞、切断等初处理。</p> <p>一条鲢鱼切为鱼头和鱼身，分别在剁椒鱼头和鱼块生产线上速冻锁鲜，抽真空后再组合料包，做成不同种类的包装食品。此外，鱼骨等经过熟化、粉碎、烘干被加工成宠物饲料。</p> <p>“仅‘边角料’利用，每年就为企业增收近百万元。”该公司总经理张永山介绍，这种对一条鱼“吃干榨净”式的综合利用，既提高了经济效益，也实现了对生鱼废料的清洁化处理。“我们每天要用掉10万斤左右鲢鱼，把兴化本地的鲢鱼都买完，也只能满足需求量的1/3。”他说。</p> <p>在兴化，以鱼为原料的包装食品，除了剁椒鱼头，还有烤鱼、酸菜鱼等。与此同时，健康食品产业也已成为当地三大主导产业之一，规上企业年度开票收入突破110亿元。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL1724282131269FYZXGVZQYM.jpg\" width=\"600\" height=\"337\" alt=\"沙沟镇河网纵横，尽显水乡风貌。人民网 范尧摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">沙沟镇河网纵横，尽显水乡风貌。人民网 范尧摄</span></p> <p><strong>一条鱼，以农兴旅的美食担当</strong></p> <p>72岁的江荣根在外工作了大半辈子，退休后以“游客”身份回到家乡兴化。促使他回乡“旅居”的，是一碗念念不忘的鱼汤面。</p> <p>“原本只想在亲戚家住两天就回上海，结果却在老家住了下来。”江荣根入住的民宿“枇杷苑”，老板王秀荣做得一手家乡菜，而最能打动江荣根的，还是那碗鱼汤面。</p> <p>鱼汤是将鳝鱼剔肉留骨，加入小鲫鱼、大猪骨煸炒，用文火慢炖到浓白，最后再把下好的面条放到汤头里。这一碗汤鲜味美的鱼汤面让江荣根穿过数十年岁月，吃到了“小时候的味道”。</p> <p>每年住在兴化的时间里，江荣根都会邀请他在上海的“退休团”朋友同来，春看垛田油菜，夏赏万亩荷塘，秋游水上森林，冬观候鸟翔集。沙沟古镇景区内的金沙沟水席馆，一道兴化鱼圆颇受大家的好评。“不少客人都说，就为这口鱼圆来的兴化，吃完还要打包几份带走。高峰期我们一天能卖掉大几百斤。”在金沙沟水席馆总经理张庄巧眼里，鱼汤面也好，鱼圆也罢，都是本乡人的家常饭菜，也是城里人舌尖上的乡愁记忆。</p> <p>以农兴旅，以旅促农，美食总是屡试不爽的关键。仅金沙沟水席馆这一家，一年上百万元的营业额中，淡水鱼有关的菜品销售占近七成。而像这样的餐馆，兴化境内的景区里比比皆是。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL17242819971464D92R8R6C7.jpg\" width=\"600\" height=\"567\" alt=\"每年6月的万人龙虾宴，是盱眙龙虾爆火的标志。许昌银摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">每年6月的万人龙虾宴，是盱眙龙虾爆火的标志。许昌银摄</span></p> <p><strong>“接二连三”的，不止一条鱼</strong></p> <p>产业振兴是乡村振兴的重中之重。事实上，像“兴化的一条鱼”这样“接二连三”的故事，江苏还有很多。</p> <p>淮安市盱眙县有“中国龙虾之都”的美称，该县小龙虾养殖面积97万亩，从养殖、加工到餐饮，从事龙虾相关产业的人口超过20万，形成了一个年产值超300亿元的富民产业。去年投产的龙虾超级工厂，更让盱眙龙虾成为只需24小时就能从当地虾田送到全国消费者手中的即食美味。</p> <p>在无锡市惠山区阳山镇，3.5万亩桃林，5000多户桃农，成就了当地人的一项甜蜜产业。当地不光卖桃，还卖起了风景，全年200多万的游客带来农旅两旺，阳山农民人均可支配收入高达6.6万元。</p> <p>近些年，江苏持续倡导推动农村一二三产业融合发展。人民网从江苏省农业农村厅了解到，截至目前，江苏以“一村一品、一镇一特、一县一业”为抓手，已打造10亿元以上县域优势特色产业近200个，培育国家农业产业强镇60多个、全国“一村一品”示范村镇200多个。</p> <p>“一二三产业融合发展可以将资源优势转变为产品优势，产品优势转化为产业优势，产业优势转化为市场优势，是乡村产业振兴的进阶方向。其关键在于找准特色资源和优势产业，注重发挥龙头企业的带动作用，并持续优化产业链合作机制，切实带动农民增收。”江苏省农科院农产品加工研究所首席研究员李春阳说。</p><center></center> ', 0, 41, '', '2024-12-09 23:17:35', '2025-11-30 15:38:44');
INSERT INTO `cms_article` VALUES (22, 8, '', '欢迎使用ChanCMS系统1', '', '2', '', '', '', '', '11', '/public/uploads/default/2025/04/02/1743577048415_source_01.jpg', '<p>欢迎使用ChanCMS系统1</p>', 0, 44, '', '2025-04-02 14:28:02', '2025-11-23 16:17:43');
INSERT INTO `cms_article` VALUES (24, 8, '', '1', '', '2,1', '', 'article-book.html', '', '', '', '/public/uploads/default/2025/10/21/1761014737190_source_image.jpg', '<p>欢迎使用ChanCMS系统<img src=\"http://localhost:3000/public/uploads/default/2025/10/21/1761014747767_source_logo.jpg\" alt=\"\" width=\"600\" height=\"300\"></p>\n<p>&lt;script&gt;alert(123)&lt;/script&gt;</p>', 0, 52, '', '2025-10-22 10:45:23', '2025-10-21 10:45:23');
INSERT INTO `cms_article` VALUES (26, 8, NULL, '以理念之变引领发展之变', '', '', '', NULL, '', '', ' 金秋时节，丰收在望。', '', '<p> 金秋时节，丰收在望。</p> <p> “十四五”即将收官，在前4年5.5%的平均增速基础上，今年前三季度国内生产总值同比增长5.2%，2025年中国经济总量有望达到140万亿元左右。</p> <p> 成就举世瞩目，共识愈加深刻。</p> <p> 回望这5年，中国经济“在风雨洗礼中成长、在历经考验中壮大”，根本在于以习近平同志为核心的党中央坚强领导，在于习近平新时代中国特色社会主义思想特别是习近平经济思想科学指引。</p> <p> 理念是行动的先导。</p> <p> 10年前，习近平总书记在党的十八届五中全会上提出创新、协调、绿色、开放、共享的新发展理念，引导我国经济发展取得了历史性成就、发生了历史性变革。</p> <p> 实践是检验真理的试金石，也是唯一标准。站在决胜“十四五”、谋划“十五五”的历史关口，我们更能深刻感受到以新发展理念为主要内容的习近平经济思想所蕴含的真理力量和实践伟力。</p> <p> <strong>（一）</strong></p> <p> 新发展理念顺应时代发展潮流，指明了实现更高质量、更有效率、更加公平、更可持续发展的新路径。</p> <p> 一辆车，点燃转型升级新引擎。</p> <p> 2024年11月，中国新能源汽车年产第1000万辆在东风岚图云峰工厂下线，我国成为全球首个新能源汽车年产突破1000万辆的国家。</p> <p> “现在中国要向制造业强国、工业强国的更高目标发展，就是要在发展战略性新兴产业方面，抢抓机遇、弯道超车。”从跟跑到领跑，引领中国新能源汽车跨越发展的，是新发展理念带来的产业变革。</p> <p> 抓住创新这个第一动力，岚图汽车大量采用人工智能、物联网、数字孪生等前沿技术，新车生产准备周期至少缩短20%，工艺设计成本下降15%以上，新品质量提升10%以上。</p> <p> 把握绿色发展的时代脉搏，岚图汽车率先在行业把燃油车产能系统地升级改造为新能源汽车产能，还在5C智慧充电网络上实现了新能源汽车用“绿电”。</p> <p> 从要素驱动转向创新驱动，变粗放发展为绿色低碳发展，我国新能源汽车产业链锚定高端化、智能化、绿色化方向加速前行。</p> <p> 今天，运用智能化生产的重庆赛力斯超级工厂里，一分钟下线两台新能源汽车；我国已建成世界上数量最多、辐射面积最大的汽车充电基础设施体系……</p> <p> “新能源汽车、锂电池、光伏产品给中国制造增添了新亮色。”目前，我国新能源汽车产销量连续10年位居全球第一，锂离子电池的国际市场占有率排名世界第一。</p> <p> 从一个企业到一个行业，再到整个中国经济，新发展理念激发了高质量发展的澎湃动能，推动新时代中国经济的跨越与蝶变。</p> <p> DeepSeek大模型火热出圈、全超导托卡马克核聚变实验装置刷新世界纪录……抓住创新这个牵动经济社会发展全局的“牛鼻子”，我国国家核心竞争力不断提升，在全球创新指数排名中从2012年的第三十四位升至2025年的第十位，成为10多年来创新力提升最快的经济体之一。</p> <p> 从“APEC蓝”“冬奥蓝”到“北京蓝”常驻，新时代以来，我国积极培育和发展绿色生产力，建成了全球规模最大的可再生能源体系，产业“含绿量”提升发展“含金量”，“十四五”前4年单位国内生产总值能耗累计降低11.6%。</p> <p> “中国经济正逐步向更高质量、更加平衡、更具可持续性的增长模式转变。”国际货币基金组织评价。</p> <p> 新时代的发展实践告诉我们，唯有坚持新发展理念引领，加快创新发展、绿色发展步伐，加快培育和发展新质生产力，中国经济才能在高质量发展中赢得历史主动。</p> <p> <strong>（二）</strong></p> <p> 贯彻新发展理念，有利于解决我国发展不平衡不充分问题，满足人民日益增长的美好生活需要。</p> <p> 一项“工程”，绘就融合发展新图景。</p> <p> 借助智能传感设备，在手机上认养“共享菜田”；无人超市、智能医务室……乡村生产生活现代化水平持续提升，城乡一体化发展进程加快。</p> <p> 农创客、文创客、科创客，乡村运营师、农村职业经理人……共建共享，城乡统筹发展动能澎湃。</p> <p> 在“浙”里看见“未来乡村”。20多年来，在“千万工程”引领下，浙江一张蓝图绘到底，城乡融合发展深入推进。</p> <p> “坚持以人民为中心的发展思想，让中国式现代化建设成果更多更公平地惠及全体人民”。从“浙”里走向全国，“千万工程”为实现协调发展、共享发展开辟了广阔路径、提供了宝贵经验。</p> <p> 针对城乡区域发展不平衡这一“最大短板”，广东省坚持以新发展理念为指引，结合实际提出实施“百千万工程”，推进强县促镇带村，努力变短板为“潜力板”。</p> <p> 白云区，广州市面积最大、人口最多的中心城区，城乡二元结构制约高质量发展。“百千万工程”实施以来，白云区累计筹集帮扶资金2.2亿元，助力涉农镇街发展，去年农村居民人均可支配收入首次突破4万元，增速在广州市排名第一。</p> <p> 如今，广东农村集体经济收入10万元以下薄弱村基本消除，102个建制镇入围“2025镇域经济500强”。</p> <p> 推动高质量发展、创造高品质生活、促进高效能治理，协调发展、共享发展理念日益深入人心。</p> <p> 通一座桥、兴一片业、富一方百姓，花江峡谷大桥的通车带来山乡巨变，布依族刺绣、苗银等民族工艺品走出大山；</p> <p> 变“单打独斗”为“攥指成拳”，福建仙游构建起一个个乡村特色共富工坊，以村集体增收带动低收入农户就业增收；</p> <p> 从破旧土坯房到美丽庭院，从靠天吃饭到产业致富，宁夏银川移民群众实现了从“搬得出”到“能致富”的华丽蜕变；</p> <p> …………</p> <p> 新时代波澜壮阔的发展实践中，鲜明贯穿着以人民为中心的发展思想。区域重大战略落地落实，打赢脱贫攻坚战，推进乡村全面振兴，建成全球规模最大的教育体系、社会保障体系、医疗卫生体系，人民群众的获得感、幸福感、安全感不断增强。</p> <p> 中国式现代化，民生为大。新时代的发展实践告诉我们，必须坚持发展为了人民、发展依靠人民、发展成果由人民共享，使全体人民在共建共享发展中有更多获得感，朝着共同富裕方向稳步前进。</p> <p> <strong>（三）</strong></p> <p> 开放是国家繁荣发展的必由之路，贯彻新发展理念是推进深层次改革、扩大高水平开放的必然要求。</p> <p> 一个市场，塑造开放发展新机遇。</p> <p> 10月14日，浙江义乌第六代市场全球数贸中心开业运营，义乌市场开启从传统贸易模式向数字贸易生态跃升的新进程。</p> <p> 小商品，大市场。今天的义乌，一手牵着210多万家“中国制造”企业，一手连着230多个国家和地区，但义乌不求“一家独大”，始终坚持与世界互利共赢。</p> <p> “各国经济，相通则共进，相闭则各退。”开放的义乌，开放的中国，为全球发展注入更多正能量和确定性。</p> <p> 特斯拉上海储能超级工厂投产，雷克萨斯在沪设立独资电动汽车工厂……今年以来，一批跨国车企加码在华投资、坚定“重仓”中国。</p> <p> 5年投入25亿美元，国际医药巨头阿斯利康在北京建立第六个全球战略研发中心；总投资约5亿元、汇聚500多名科学家，德国汉高粘合剂技术上海创新体验中心在张江高科技园区正式落成……中国正成为跨国企业必争的创新高地。</p> <p> 深入了解中国就会坚定相信中国——</p> <p> 面对经济全球化的逆风和回头浪，中国始终坚定站在历史正确一边、站在公平正义一边，践行真正的多边主义，坚决反对单边主义、保护主义、强权政治和霸凌行径；</p> <p> 面对一些国家筑“小院高墙”、搞“脱钩断链”，中国持续缩减外资准入负面清单，全面放开制造业准入；</p> <p> 面对一些国家和地区收紧入境政策，中国单方面免签和过境免签国家已分别扩大到47个和55个。</p> <p> 新时代以来，我国分7批设立22个自由贸易试验区，建设海南自由贸易港。我国已成为150多个国家和地区的主要贸易伙伴，货物贸易总额连续多年稳居世界第一，吸引外资和对外投资居世界前列，共建“一带一路”成为深受欢迎的国际公共产品和国际合作平台。</p> <p> 高水平开放是高质量发展的前提条件。新时代的发展实践告诉我们，过去中国经济发展是在开放条件下取得的，未来中国经济实现高质量发展也必须在更加开放条件下进行。坚持开放发展，必须顺应我国经济深度融入世界经济的趋势，奉行互利共赢的开放战略，发展更高层次的开放型经济。</p> <p> “路子对了，就要坚持走下去，久久为功”。</p> <p> 党的二十届四中全会研究制定“十五五”规划建议，旨在对未来五年发展作出顶层设计和战略擘画，推动事关中国式现代化全局的战略任务取得重大突破。坚持以习近平经济思想为指引，坚持高质量发展，以新发展理念引领发展，“十五五”时期中国经济航船必将乘风破浪、行稳致远，基本实现社会主义现代化必将取得决定性进展。</p> <p> “中华民族伟大复兴势不可挡！”</p> <p><span> 《 人民日报 》（ 2025年10月21日 01 版）</span></p><center><table align=\"center\"><tbody><tr></tr></tbody></table></center> <div>(责编：杨光宇、曲源)</div>', 0, 4, '', '2025-11-25 16:13:36', '2025-11-30 16:36:23');

-- ----------------------------
-- Table structure for cms_articletag
-- ----------------------------
DROP TABLE IF EXISTS `cms_articletag`;
CREATE TABLE `cms_articletag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `tid` int(11) NULL DEFAULT NULL COMMENT '标签id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `aid`(`aid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章-标签表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_articletag
-- ----------------------------
INSERT INTO `cms_articletag` VALUES (3, 22, 2);
INSERT INTO `cms_articletag` VALUES (40, 24, 2);
INSERT INTO `cms_articletag` VALUES (41, 24, 1);
INSERT INTO `cms_articletag` VALUES (42, 13, 2);

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级栏目',
  `seoTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'seo标题',
  `seoKeywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'seo关键字',
  `seoDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'seo描述',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目标识',
  `path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目路径',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目描述',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '0 栏目 1 页面',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '网址',
  `orderBy` tinyint(2) NULL DEFAULT 0 COMMENT '排序',
  `target` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '打开方式 0 当前页面打开 1 新页面打开',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '0 显示 1隐藏',
  `mid` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '模型id',
  `listView` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'list.html' COMMENT '列表页模板',
  `articleView` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'article.html' COMMENT '详情页模板',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '网站栏目' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES (1, 0, '', '', '', '首页', 'home', '/home', '', '1', '', 1, '0', '0', '0', 'index.html', 'index.html', '2024-09-13 22:38:12', '2025-11-29 19:52:38');
INSERT INTO `cms_category` VALUES (2, 0, '', '', '', '文章', 'art3', '/art3', '', '0', '', 2, '0', '0', '0', 'list.html', 'article.html', '2024-09-13 22:38:12', '2025-11-25 11:25:10');
INSERT INTO `cms_category` VALUES (3, 0, '', '', '', '图片', 'pics', '/pics', '', '0', '', 3, '0', '0', '0', 'list-img.html', 'article-img.html', '2024-09-13 22:39:02', '2025-11-25 11:25:21');
INSERT INTO `cms_category` VALUES (4, 0, '', '', '', '视频', 'video', '/video', '', '0', '', 4, '0', '0', '0', 'list.html', 'article.html', '2024-09-13 22:39:22', '2025-11-25 11:25:35');
INSERT INTO `cms_category` VALUES (5, 0, '', '', '', '下载', 'down', '/down', '', '0', '', 5, '0', '0', '1', 'list.html', 'article-down.html', '2024-09-13 22:39:44', '2025-11-25 11:25:45');
INSERT INTO `cms_category` VALUES (6, 0, '', '', '', '专题', 'topic', '/topic', '', '1', '', 6, '0', '0', '0', 'list.html', 'special.html', '2024-09-13 22:42:10', '2025-11-25 11:25:51');
INSERT INTO `cms_category` VALUES (7, 0, '', '', '', '关于', 'about', '/about', '', '1', '', 7, '0', '0', '0', 'list.html', 'page.html', '2024-09-13 22:42:55', '2025-11-25 11:25:57');
INSERT INTO `cms_category` VALUES (8, 2, '', '', '', '文档', 'doc', '/art2/doc', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2024-12-05 22:35:58', '2025-01-07 21:41:13');
INSERT INTO `cms_category` VALUES (9, 7, '', '', '', '作者', 'zuozhe', '/about/zuozhe', '', '1', '', 0, '0', '0', '0', 'list.html', 'page.html', '2024-12-05 23:25:44', '2024-12-05 23:34:37');

-- ----------------------------
-- Table structure for cms_field
-- ----------------------------
DROP TABLE IF EXISTS `cms_field`;
CREATE TABLE `cms_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NULL DEFAULT NULL COMMENT '模型id',
  `cname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型字段中文名称',
  `ename` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模型字段英文名称',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单类型\r\n1单行文本	\r\n2.多行文本 \r\n3.下拉菜单 \r\n4.单选 \r\n5.多选 \r\n6.时间和日期 7.数字',
  `val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段配置 下拉菜单多选等选项配置',
  `defaultVal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '默认值',
  `orderBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '字段顺序',
  `length` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段长度',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `model_id`(`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段字典' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_field
-- ----------------------------
INSERT INTO `cms_field` VALUES (1, 1, '文件名称', 'fileName', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (2, 1, '文件版本', 'fileVersion', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (3, 1, '文件链接', 'fileLink', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (4, 1, '测试1', 'test1', '4', '', '{\"options\":[{\"label\":\"本地下载\",\"value\":\"1\"},{\"label\":\"电信下载\",\"value\":\"2\"}]}', '0', '');

-- ----------------------------
-- Table structure for cms_frag
-- ----------------------------
DROP TABLE IF EXISTS `cms_frag`;
CREATE TABLE `cms_frag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名称',
  `mark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标识',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `type` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '类型 1 富文本 2 文本框',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '碎片' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_frag
-- ----------------------------
INSERT INTO `cms_frag` VALUES (1, 'chancms简介', 'chancms', '<p><span style=\"font-size: 14px;\">ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。</span></p>', '1', '2024-09-13 22:53:33', '2024-09-27 10:51:41');
INSERT INTO `cms_frag` VALUES (2, 'PowerBy', 'PowerBy', '<p style=\"text-align: center;\">Powder By <a href=\"http://www.chancms.top\" target=\"_blank\" rel=\"noopener\">ChanCMS v3.0.14</a></p>', '1', '2024-09-27 11:00:03', '2025-02-12 22:13:21');

-- ----------------------------
-- Table structure for cms_friendlink
-- ----------------------------
DROP TABLE IF EXISTS `cms_friendlink`;
CREATE TABLE `cms_friendlink`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接名称',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `orderBy` tinyint(255) NULL DEFAULT 0 COMMENT '排序',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_friendlink
-- ----------------------------
INSERT INTO `cms_friendlink` VALUES (1, 'ChanCMS官网', 'https://www.chancms.top', 0, '2024-10-02 14:12:45', '2024-10-02 14:12:45');

-- ----------------------------
-- Table structure for cms_message
-- ----------------------------
DROP TABLE IF EXISTS `cms_message`;
CREATE TABLE `cms_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言分类 1->咨询 2->建议 3->投诉 4->其它',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言标题',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `wechat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信',
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_message
-- ----------------------------
INSERT INTO `cms_message` VALUES (1, '1', '1', '1111', '1', '1', '1', '1', '2025-04-02 15:47:25', '2025-04-02 15:47:25');

-- ----------------------------
-- Table structure for cms_model
-- ----------------------------
DROP TABLE IF EXISTS `cms_model`;
CREATE TABLE `cms_model`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型名称',
  `tableName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型对应的表名',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '1->开启 0->关闭',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模型字典' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_model
-- ----------------------------
INSERT INTO `cms_model` VALUES (1, '下载模型', 'ext_download', '1', '下载模型');

-- ----------------------------
-- Table structure for cms_site
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site`  (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '站点id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网站名称',
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网站logo',
  `domain` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网站域名',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `wx` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信',
  `icp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ICP备案号',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '站点统计代码',
  `json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '万能配置',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面标题',
  `keywords` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面关键词',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面描述',
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'default' COMMENT 'view模板名称',
  `uploadWay` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '上传方式 1->普通 2->七牛云',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '网站信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES (1, 'ChanCMS', '/public/template/default/img/logo.png', 'www.chancms.top', '867528315@qq.com', NULL, '皖ICP备2024030927号-1', '', '', 'ChanCMS演示站', 'ChanCMS演示站', 'ChanCMS是一款基于Express和MySQL研发的高质量实用型CMS管理系统。它具备多种类型网站开发，易扩展、基于模块化和插件化开发模式，适用于商用企业级程序开发。', 'default', '1', NULL, '2025-11-25 15:11:06');

-- ----------------------------
-- Table structure for cms_slide
-- ----------------------------
DROP TABLE IF EXISTS `cms_slide`;
CREATE TABLE `cms_slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `imgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '轮播图',
  `linkUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '轮播链接',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '轮播文案',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` tinyint(2) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(2) NULL DEFAULT 0 COMMENT '0 发布 1 不发布',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_slide
-- ----------------------------
INSERT INTO `cms_slide` VALUES (1, '01', '/public/template/default/img/01.jpg', '', '<h2 class=\"text-4xl font-bold mb-4\">环保科技引领未来</h2>\n<p class=\"text-xl mb-6\">专业的环保解决方案提供商</p>\n<p><a href=\"about.html\" class=\"bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-6 rounded-full transition duration-300\">联系我们</a></p>', NULL, NULL, 0, '2024-09-17 10:52:05', '2025-11-29 20:06:19');
INSERT INTO `cms_slide` VALUES (3, '04', '/public/template/default/img/03.jpg', '', NULL, NULL, NULL, 0, '2025-07-05 20:51:11', '2025-11-29 20:06:33');

-- ----------------------------
-- Table structure for cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标识',
  `count` int(11) NULL DEFAULT 0 COMMENT '引用次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_tag
-- ----------------------------
INSERT INTO `cms_tag` VALUES (1, '图片', 'pic', 7);
INSERT INTO `cms_tag` VALUES (2, 'chancms', 'chancms', 8);

-- ----------------------------
-- Table structure for ext_download
-- ----------------------------
DROP TABLE IF EXISTS `ext_download`;
CREATE TABLE `ext_download`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `fileName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `fileVersion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fileLink` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `test1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `aid`(`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '下载模型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ext_download
-- ----------------------------
INSERT INTO `ext_download` VALUES (1, 13, '文件下载', 'v2022', 'https://www.chancms.top', '1');

-- ----------------------------
-- Table structure for ext_test
-- ----------------------------
DROP TABLE IF EXISTS `ext_test`;
CREATE TABLE `ext_test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '1' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ext_test
-- ----------------------------

-- ----------------------------
-- Table structure for plus_collect
-- ----------------------------
DROP TABLE IF EXISTS `plus_collect`;
CREATE TABLE `plus_collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `taskName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '任务名称',
  `targetUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '采集地址',
  `listTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列表tag标签',
  `startNum` int(11) NULL DEFAULT 1 COMMENT '开始页面',
  `endNum` int(11) NULL DEFAULT NULL COMMENT '结束页面',
  `increment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '递增数量默认1',
  `titleTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `articleTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文章内容',
  `charset` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编码 1-> utf-8  2-> gb2312',
  `pages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '采集地址集合',
  `parseData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '格式化数据函数',
  `cid` int(11) NOT NULL COMMENT '存储到栏目',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '发布状态 1 草稿 2 发布',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '采集' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plus_collect
-- ----------------------------
INSERT INTO `plus_collect` VALUES (2, '人民网-top文章', 'http://www.people.com.cn/', '#rm_topline a', 1, 1, '1', 'h1', '.rm_txt_con', '1', 'http://opinion.people.com.cn/n1/2025/1021/c1003-40585875.html', '{\n \"removeSelectors\":\".paper_num\"\n}', 8, '2', '2024-08-22 16:27:19', '2025-10-21 16:57:42');

-- ----------------------------
-- Table structure for plus_gather
-- ----------------------------
DROP TABLE IF EXISTS `plus_gather`;
CREATE TABLE `plus_gather`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `taskName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '任务名称',
  `targetUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '采集地址',
  `parseData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '格式化数据函数',
  `cid` int(11) NOT NULL COMMENT '存储到栏目',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '发布状态 1 草稿 2 发布',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '开源接口采集' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plus_gather
-- ----------------------------
INSERT INTO `plus_gather` VALUES (3, '每日新闻60s', 'https://60api.09cdn.xyz/v2/60s?encoding=json', '{\n    \"title\": {\n        \"path\": \"data.tip\"\n    },\n    \"content\": {\n        \"path\": \"data.news\",\n        \"isArray\": true,\n        \"wrap\": \"p\"\n    }\n}', 8, '2', '2023-11-29 19:10:45', '2025-10-22 13:59:38');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关联配置类型',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置键',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置值',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '开启（1 开启 2 关闭）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `config_key`(`config_key`) USING BTREE,
  INDEX `sys_config_ibfk_1`(`type_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'wechat_minip', 'appid', '23', '1', '2025-03-07 14:50:13', '2025-03-07 22:11:33', '小程序appId');
INSERT INTO `sys_config` VALUES (2, 'wechat_minip', 'secret', '23', '1', '2025-03-07 14:54:36', '2025-03-07 22:11:33', '');
INSERT INTO `sys_config` VALUES (3, 'qiniu_oss', 'accessKey', '5xoT5V81UHKLCVnVcGnoVWVtrw2fdJk_n7X8Pt0o', '1', '2025-03-07 14:59:31', '2025-08-27 11:11:22', '');
INSERT INTO `sys_config` VALUES (4, 'qiniu_oss', 'secretKey', 'N9V-UkYmjIi7nxi1eL_WhLHR9TUIQFh0fxBct7bx', '1', '2025-03-07 14:59:51', '2025-08-27 11:11:22', '');
INSERT INTO `sys_config` VALUES (5, 'qiniu_oss', 'bucket', 'ohm', '1', '2025-03-07 15:00:08', '2025-08-27 11:11:22', '');
INSERT INTO `sys_config` VALUES (6, 'cms_config', 'uploadWay', '1', '1', '2025-03-07 15:00:42', '2025-03-07 15:00:42', '');
INSERT INTO `sys_config` VALUES (8, 'qiniu_oss', 'domain', 'resource.ohmvehicles.com', '1', '2025-03-07 17:48:50', '2025-08-27 11:11:22', NULL);
INSERT INTO `sys_config` VALUES (9, 'cms_data', 'init', '{\r\n  \"site\": {\r\n    \"method\": \"site\"\r\n  },\r\n  \"category\": {\r\n    \"method\": \"category\"\r\n  },\r\n  \"friendlink\": {\r\n    \"method\": \"friendLink\",\r\n    \"params\": {\r\n      \"pageSize\": 10\r\n    }\r\n  },\r\n  \"frag\": {\r\n    \"method\": \"frag\",\r\n    \"params\": {\r\n      \"pageSize\": 50\r\n    }\r\n  },\r\n  \"tag\": {\r\n    \"method\": \"tag\",\r\n    \"params\": {\r\n      \"pageSize\": 10\r\n    }\r\n  }\r\n}', '1', '2025-07-30 11:11:47', '2025-11-30 16:37:45', '模板全局数据');
INSERT INTO `sys_config` VALUES (10, 'cms_data', 'home', '{\r\n  \"banner\": {\r\n    \"method\": \"bannerSlide\",\r\n    \"show\": true\r\n  },\r\n  \"slide\": {\r\n    \"method\": \"getArticleList\",\r\n    \"params\": {\r\n      \"start\": 0,\r\n      \"len\": 1,\r\n      \"attr\": [\r\n        \"3\"\r\n      ]\r\n    },\r\n    \"field\": [\r\n      \"id\",\r\n      \"title\",\r\n      \"path\",\r\n      \"link\",\r\n      \"img\"\r\n    ],\r\n    \"show\": true\r\n  },\r\n  \"top\": {\r\n    \"method\": \"getArticleList\",\r\n    \"params\": {\r\n      \"start\": 0,\r\n      \"len\": 1,\r\n      \"attr\": [\r\n        \"1\"\r\n      ],\r\n      \"type\": 1\r\n    },\r\n    \"field\": [\r\n      \"id\",\r\n      \"title\",\r\n      \"path\",\r\n      \"description\",\r\n      \"img\"\r\n    ],\r\n    \"show\": true\r\n  },\r\n  \"news\": {\r\n    \"method\": \"getArticleList\",\r\n    \"params\": {\r\n      \"start\": 0,\r\n      \"len\": 3,\r\n      \"excludeAttr\": [\r\n        \"1\"\r\n      ]\r\n    },\r\n    \"field\": [\r\n      \"id\",\r\n      \"title\",\r\n      \"path\",\r\n      \"createdAt\"\r\n    ],\r\n    \"show\": true\r\n  },\r\n  \"article\": {\r\n    \"method\": \"getArticleListByCids\",\r\n    \"params\": {\r\n      \"cid\": [],\r\n      \"len\": 5,\r\n      \"toplen\": 1,\r\n      \"attr\": [\r\n        \"1\",\r\n        \"2\"\r\n      ]\r\n    },\r\n    \"show\": true\r\n  },\r\n  \"imgs\": {\r\n    \"method\": \"getNewImgList\",\r\n    \"params\": {\r\n      \"len\": 8\r\n    },\r\n    \"field\": [\r\n      \"id\",\r\n      \"title\",\r\n      \"path\",\r\n      \"img\"\r\n    ],\r\n    \"show\": true\r\n  },\r\n  \"recommend\": {\r\n    \"method\": \"getArticleList\",\r\n    \"params\": {\r\n      \"start\": 0,\r\n      \"len\": 10,\r\n      \"attr\": [\r\n        \"2\"\r\n      ]\r\n    },\r\n    \"show\": true\r\n  },\r\n  \"hot\": {\r\n    \"method\": \"getArticlePvList\",\r\n    \"show\": true\r\n  },\r\n  \"recommendImgs\": {\r\n    \"method\": \"getNewImgList\",\r\n    \"params\": {\r\n      \"len\": 10,\r\n      \"id\": \"\",\r\n      \"attr\": [\r\n        \"2\"\r\n      ]\r\n    },\r\n    \"field\": [\r\n      \"id\",\r\n      \"title\",\r\n      \"path\",\r\n      \"img\",\r\n      \"description\"\r\n    ],\r\n    \"show\": true\r\n  },\r\n  \"friendlink\": {\r\n    \"method\": \"friendLink\",\r\n    \"params\": {\r\n      \"pageSize\": 10\r\n    },\r\n    \"show\": true\r\n  }\r\n}', '1', '2025-07-30 11:15:24', '2025-11-30 16:37:55', '模板首页数据');
INSERT INTO `sys_config` VALUES (11, 'cms_data', 'list', '{\r\n  \"articleList\": {\r\n    \"method\": \"list\",\r\n    \"params\": {\r\n      \"pageSize\": 10\r\n    }\r\n  },\r\n  \"recommend\": {\r\n    \"method\": \"getArticleListByCid\",\r\n    \"params\": {\r\n      \"len\": 5,\r\n      \"attr\": [\r\n        \"2\"\r\n      ]\r\n    },\r\n    \"show\": true\r\n  },\r\n  \"hot\": {\r\n    \"method\": \"getArticlePvList\",\r\n    \"params\": {\r\n      \"len\": 10\r\n    },\r\n    \"field\": [\r\n      \"id\",\r\n      \"title\",\r\n      \"path\"\r\n    ],\r\n    \"show\": true\r\n  },\r\n  \"imgs\": {\r\n    \"method\": \"getNewImgList\",\r\n    \"params\": {\r\n      \"len\": 5\r\n    },\r\n    \"show\": true\r\n  }\r\n}', '1', '2025-07-30 11:22:19', '2025-11-30 16:38:07', '模板列表数据');
INSERT INTO `sys_config` VALUES (12, 'cms_data', 'article', '{\r\n  \"news\": {\r\n    \"method\": \"getArticleListByCid\",\r\n    \"params\": {\r\n      \"len\": 10\r\n    }\r\n  },\r\n  \"hot\": {\r\n    \"method\": \"getArticlePvList\",\r\n    \"params\": {\r\n      \"len\": 10\r\n    },\r\n    \"field\": [\r\n      \"id\",\r\n      \"title\",\r\n      \"path\",\r\n      \"pv\"\r\n    ],\r\n    \"show\": true\r\n  },\r\n  \"imgs\": {\r\n    \"method\": \"getNewImgList\",\r\n    \"params\": {\r\n      \"len\": 5\r\n    }\r\n  },\r\n  \"tags\": {\r\n    \"method\": \"fetchTagsByArticleId\",\r\n    \"params\": {\r\n      \"len\": 5\r\n    }\r\n  },\r\n  \"count\": {\r\n    \"method\": \"count\"\r\n  },\r\n  \"pre\": {\r\n    \"method\": \"prev\"\r\n  },\r\n  \"next\": {\r\n    \"method\": \"next\"\r\n  }\r\n}', '1', '2025-07-30 11:22:53', '2025-11-30 16:38:17', '模板详情数据');
INSERT INTO `sys_config` VALUES (13, 'cms_data', 'page', '{\r\n  \"page\": {\r\n    \"method\": \"list\",\r\n    \"params\": {\r\n      \"pageSize\": 10\r\n    }\r\n  }\r\n}', '1', '2025-07-30 11:23:25', '2025-11-30 16:38:27', '模板单页数据');
INSERT INTO `sys_config` VALUES (14, 'cms_data', 'search', '{\r\n  \"search\": {\r\n    \"method\": \"search\",\r\n    \"params\": {\r\n      \"pageSize\": 10,\r\n      \"cid\": 0\r\n    }\r\n  }\r\n}', '1', '2025-07-30 11:23:53', '2025-11-30 16:38:58', '模板搜索列表数据');
INSERT INTO `sys_config` VALUES (15, 'cms_data', 'tags', '{\r\n  \"tags\": {\r\n    \"method\": \"tags\",\r\n    \"params\": {\r\n      \"pageSize\": 10\r\n    }\r\n  }\r\n}', '1', '2025-07-30 11:24:06', '2025-11-30 16:38:48', '模板tag列表数据');

-- ----------------------------
-- Table structure for sys_config_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_config_type`;
CREATE TABLE `sys_config_type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型标识（如 qiniu, wechat_mini）',
  `type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称（如七牛云存储、微信小程序）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '是否启用',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type_code`(`type_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config_type
-- ----------------------------
INSERT INTO `sys_config_type` VALUES (2, 'wechat_minip', '微信小程序', '1', '微信小程序登录appId appkey', '2025-03-01 21:02:10', '2025-03-07 14:20:35');
INSERT INTO `sys_config_type` VALUES (3, 'qiniu_oss', '七牛云配置', '1', '七牛云oss配置', '2025-03-01 21:03:35', '2025-03-07 14:20:21');
INSERT INTO `sys_config_type` VALUES (4, 'cms_config', '应用设置', '1', '站点常用配置', '2025-03-04 19:10:51', '2025-03-07 14:21:05');
INSERT INTO `sys_config_type` VALUES (5, 'cms_data', '模板数据', '1', '页面模板接口配置数据', '2025-07-30 10:25:04', '2025-11-30 16:39:29');

-- ----------------------------
-- Table structure for sys_configs
-- ----------------------------
DROP TABLE IF EXISTS `sys_configs`;
CREATE TABLE `sys_configs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关联配置类型',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置键',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置值',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '开启（1 开启 2 关闭）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `config_key`(`config_key`) USING BTREE,
  INDEX `sys_configs_ibfk_1`(`type_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_configs
-- ----------------------------
INSERT INTO `sys_configs` VALUES (1, 'wechat_minip', 'appid', '2', '1', '2025-03-07 14:50:13', '2025-03-07 17:31:24', '小程序appId');
INSERT INTO `sys_configs` VALUES (2, 'wechat_minip', 'secret', '2', '1', '2025-03-07 14:54:36', '2025-03-07 17:31:24', '');
INSERT INTO `sys_configs` VALUES (3, 'qiniu_oss', 'accessKey', 'accessKey1', '1', '2025-03-07 14:59:31', '2025-03-07 17:52:32', '');
INSERT INTO `sys_configs` VALUES (4, 'qiniu_oss', 'secretKey', 'secretKey1', '1', '2025-03-07 14:59:51', '2025-03-07 17:52:32', '');
INSERT INTO `sys_configs` VALUES (5, 'qiniu_oss', 'bucket', 'bucket1', '1', '2025-03-07 15:00:08', '2025-03-07 17:52:32', '');
INSERT INTO `sys_configs` VALUES (6, 'cms_config', 'uploadWay', '1', '1', '2025-03-07 15:00:42', '2025-03-07 15:00:42', '');
INSERT INTO `sys_configs` VALUES (8, 'qiniu_oss', 'domain', 'domain1', '1', '2025-03-07 17:48:50', '2025-03-07 17:52:32', NULL);

-- ----------------------------
-- Table structure for sys_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginlog`;
CREATE TABLE `sys_loginlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家',
  `prov` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `isp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网络提供商',
  `lat` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `lng` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`, `createdAt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_loginlog
-- ----------------------------
INSERT INTO `sys_loginlog` VALUES (218, 14, '122.96.14.142', '中国', '江苏', '南京', '', 'CNC Group CHINA169 Jiangsu Province Network', '32.0589', '118.7738', '2025-11-30 16:36:38');
INSERT INTO `sys_loginlog` VALUES (219, 14, '122.96.14.142', '中国', '江苏', '南京', '', 'CNC Group CHINA169 Jiangsu Province Network', '32.0589', '118.7738', '2025-11-30 17:07:40');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pid` int(11) NULL DEFAULT 0 COMMENT '父菜单ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '路由名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '组件路径',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '菜单图标',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '路由参数',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '权限标识',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `is_frame` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '2' COMMENT '是否为外链（1是 2否）',
  `is_cache` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '2' COMMENT '是否缓存（1缓存 2不缓存）',
  `is_show` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '是否显示（1显示 2隐藏）',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单状态（1开启 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (5, 0, '网站信息', 'dashboard', 0, '/dashboard', '@/views/base/dashboard/index.vue', 'DataLine', NULL, '', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (6, 0, '站点管理', '', 0, '/site', '', 'Monitor', NULL, '', 'M', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (7, 6, '站点设置', 'siteinfo', 0, '/siteinfo', '@/views/cms/site/index.vue', '', NULL, 'cms:site:info', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (8, 0, '内容管理', '', 0, '/content', '', 'Grid', NULL, '', 'M', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (9, 8, '栏目管理', 'category-index', 0, '/category', '@/views/cms/category/index.vue', '', NULL, 'cms:category:find', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (10, 9, '栏目新增', 'category-add', 0, '/category/add', '@/views/cms/category/add.vue', '', NULL, 'cms:category:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (11, 9, '栏目修改', 'category-edit', 0, '/category/edit/:id', '@/views/cms/category/edit.vue', '', NULL, 'cms:category:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (12, 9, '栏目删除', '', 0, '', '', '', NULL, 'cms:category:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (13, 9, '栏目查询', '', 0, '', '', '', NULL, 'cms:category:find', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (14, 8, '文章管理', 'article-index', 0, '/article', '@/views/cms/article/index.vue', '', NULL, 'cms:article:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (15, 14, '文章新增', 'article-add', 0, '/article/add', '@/views/cms/article/add.vue', '', NULL, 'cms:article:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (16, 14, '文章修改', 'article-edit', 0, '/article/edit/:id', '@/views/cms/article/edit.vue', '', NULL, 'cms:article:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (17, 14, '文章删除', '', 0, '', NULL, '', NULL, 'cms:article:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (18, 14, '文章详情', '', 0, '', NULL, '', NULL, 'cms:article:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (19, 8, '轮播管理', 'slide-index', 0, '/slide', '@/views/cms/slide/index.vue', '', NULL, 'cms:slide:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (20, 19, '轮播新增', 'slide-add', 0, '/slide/add', '@/views/cms/slide/add.vue', '', NULL, 'cms:slide:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (21, 19, '轮播修改', 'slide-edit', 0, '/slide/edit/:id', '@/views/cms/slide/edit.vue', '', NULL, 'cms:slide:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (22, 19, '轮播删除', '', 0, '', NULL, '', NULL, 'cms:slide:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (23, 19, '轮播详情', '', 0, '', NULL, '', NULL, 'cms:slide:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (24, 8, '标签管理', 'tag-index', 0, '/tag', '@/views/cms/tag/index.vue', '', NULL, 'cms:tag:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (25, 24, '标签新增', 'tag-add', 0, '/tag/add', '@/views/cms/tag/add.vue', '', NULL, 'cms:tag:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (26, 24, '标签修改', 'tag-edit', 0, '/tag/edit/:id', '@/views/cms/tag/edit.vue', '', NULL, 'cms:tag:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (27, 24, '标签删除', '', 0, '', NULL, '', NULL, 'cms:tag:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (28, 24, '标签详情', '', 0, '', NULL, '', NULL, 'cms:tag:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (29, 8, '碎片管理', 'frag-index', 0, '/frag', '@/views/cms/frag/index.vue', '', NULL, 'cms:frag:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (30, 29, '碎片新增', 'frag-add', 0, '/frag/add', '@/views/cms/frag/add.vue', '', NULL, 'cms:frag:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (31, 29, '碎片编辑', 'frag-edit', 0, '/frag/edit/:id', '@/views/cms/frag/edit.vue', '', NULL, 'cms:frag:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (32, 29, '碎片删除', '', 0, '', NULL, '', NULL, 'cms:frag:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (33, 29, '碎片详情', '', 0, '', NULL, '', NULL, 'cms:frag:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (35, 45, '页面采集', 'collect-index', 0, '/collect', '@/views/cms/collect/index.vue', '', NULL, 'cms:collect:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (36, 35, '采集新增', 'collect-add', 0, '/collect/add', '@/views/cms/collect/add.vue', '', NULL, 'cms:collect:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (37, 35, '采集修改', 'collect-edit', 0, '/collect/:id', '@/views/cms/collect/edit.vue', '', NULL, 'cms:collect:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (38, 35, '采集删除', '', 0, '', NULL, '', NULL, 'cms:collect:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (39, 35, '采集查询', '', 0, '', NULL, '', NULL, 'cms:collect:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (40, 45, '接口采集', 'gather-index', 0, '/gather', '@/views/cms/gather/index.vue', '', NULL, 'cms:gather:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (41, 40, '采集新增', 'gather-add', 0, '/gather/add', '@/views/cms/gather/add.vue', '', NULL, 'cms:gather:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (42, 40, '采集修改', 'gather-edit', 0, '/gather/edit/:id', '@/views/cms/gather/edit.vue', '', NULL, 'cms:gather:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (43, 40, '采集删除', '', 0, '', NULL, '', NULL, 'cms:gather:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (44, 40, '采集详情', '', 0, '', NULL, '', NULL, 'cms:gather:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (45, 0, '功能管理', '', 0, '/extend', NULL, 'Operation', NULL, NULL, 'M', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (46, 45, '模型管理', 'model-index', 0, '/model', '@/views/cms/model/index.vue', '', NULL, 'cms:model:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (47, 46, '模型新增', 'model-add', 0, '/model/add', '@/views/cms/model/add.vue', '', NULL, 'cms:model:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (48, 46, '模型修改', 'model-edit', 0, '/model/edit/:id', '@/views/cms/model/edit.vue', '', NULL, 'cms:model:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (49, 46, '模型删除', '', 0, '', NULL, '', NULL, 'cms:model:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (50, 46, '模型详情', '', 0, '', NULL, '', NULL, 'cms:model:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (51, 46, '字段管理', 'field-index', 0, '/model/field', '@/views/cms/field/index.vue', '', NULL, 'cms:field:list', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (52, 51, '字段新增', 'field-add', 0, '/model/field/add', '@/views/cms/field/add.vue', '', NULL, 'cms:field:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (53, 51, '字段修改', 'field-edit', 0, '/model/field/edit', '@/views/cms/field/edit.vue', '', NULL, 'cms:field:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (54, 51, '字段删除', '', 0, '', NULL, '', NULL, 'cms:field:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (55, 51, '字段详情', '', 0, '', NULL, '', NULL, 'cms:field:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (56, 8, '友情链接', 'friendlink-index', 0, '/friendlink', '@/views/cms/friendlink/index.vue', '', NULL, 'cms:friendlink:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (57, 56, '友链新增', 'friendlink-add', 0, '/friendlink/add', '@/views/cms/friendlink/add.vue', '', NULL, 'cms:friendlink:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (58, 56, '友链修改', 'friendlink-edit', 0, '/friendlink/edit/:id', '@/views/cms/friendlink/edit.vue', '', NULL, 'cms:friendlink:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (59, 56, '友链删除', '', 0, '', NULL, '', NULL, 'cms:friendlink:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (60, 56, '友链详情', '', 0, '', NULL, '', NULL, 'cms:friendlink:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (61, 8, '消息管理', 'message-index', 0, '/message', '@/views/cms/message/index.vue', '', NULL, 'cms:message:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (62, 61, '消息新增', 'message-add', 0, '/message/add', '@/views/cms/message/add.vue', '', NULL, 'cms:message:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (63, 61, '消息修改', 'message-edit', 0, '/message/edit/:id', '@/views/cms/message/edit.vue', '', NULL, 'cms:message:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (64, 61, '消息删除', '', 0, '', NULL, '', NULL, 'cms:message:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (65, 61, '消息详情', '', 0, '', NULL, '', NULL, 'cms:message:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (66, 0, '系统管理', '', 0, '/sys', '', 'Setting', NULL, NULL, 'M', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (67, 66, '用户管理', 'user-index', 0, '/user', '@/views/base/user/index.vue', '', NULL, 'base:user:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (68, 67, '用户新增', 'user-add', 0, '/user/add', '@/views/base/user/add.vue', '', NULL, 'base:user:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (69, 67, '用户修改', 'user-edit', 0, '/user/edit/:id', '@/views/base/user/edit.vue', '', NULL, 'base:user:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (70, 67, '用户删除', '', 0, '', NULL, '', NULL, 'base:user:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (71, 67, '用户详情', '', 0, '', NULL, '', NULL, 'base:user:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (72, 66, '角色管理', 'role-index', 0, '/role', '@/views/base/role/index.vue', '', NULL, 'base:role:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (73, 72, '角色新增', 'role-add', 0, '/role/add', '@/views/base/role/add.vue', '', NULL, 'base:role:create', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (74, 72, '角色编辑', 'role-edit', 0, '/role/edit/:id', '@/views/base/role/edit.vue', '', NULL, 'base:role:update', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (75, 72, '角色删除', '', 0, '', NULL, '', NULL, 'base:role:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (76, 72, '角色详情', '', 0, '', NULL, '', NULL, 'base:role:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (77, 66, '菜单管理', 'menu', 0, '/menu', '@/views/base/menu/index.vue', '', NULL, 'base:menu:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (78, 77, '菜单新增', '', 0, '', NULL, '', NULL, 'base:menu:create', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (79, 77, '菜单修改', '', 0, '', NULL, '', NULL, 'base:menu:update', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (80, 77, '菜单删除', '', 0, '', NULL, '', NULL, 'base:menu:delete', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (81, 77, '菜单详情', '', 0, '', NULL, '', NULL, 'base:menu:detail', 'F', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (82, 66, '登录日志', 'loginlog', 0, '/loginlog', '@/views/cms/loginlog/index.vue', '', NULL, 'cms:loginLog:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (83, 6, '站点更新', '', 0, '', '', '', NULL, 'cms:site:update', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (84, 66, '配置字典', 'configtype', 0, '/configtype', '@/views/base/config-type/index.vue', '', NULL, 'base:config-type:list', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (85, 84, '配置列表', 'config', 0, '/configtype/:id', '@/views/base/config/index.vue', '', NULL, 'base:config:list', 'C', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (86, 84, '字典新增', '', 0, '', '', '', NULL, 'base:config-type:create', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (87, 84, '字典修改', '', 0, '', '', '', NULL, 'base:config-type:update', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (88, 84, '字典删除', '', 0, '', '', '', NULL, 'base:config-type:delete', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (89, 84, '字典查询', '', 0, '', '', '', NULL, 'base:config-type:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (90, 85, '新增配置', '', 0, '', '', '', NULL, 'base:config:create', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (91, 85, '配置修改', '', 0, '', '', '', NULL, 'base:config:update', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (92, 85, '配置删除', '', 0, '', '', '', NULL, 'base:config:delete', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (93, 85, '配置查询', '', 0, '', '', '', NULL, 'base:config:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (94, 0, '资源管理', 'resource', 0, '/resource', '', 'Postcard', NULL, 'api:resource:all', 'M', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (95, 94, '前端模板', 'template', 0, '/template', '@/views/vip/codeEditor/index.vue', '', NULL, 'vip:v1:file:tree', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (96, 95, '模板更新', 'template-edit', 0, '', '', '', NULL, 'vip:v1:file:save', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (97, 94, '附件管理', '', 0, '/upload', '@/views/vip/data.vue', '', NULL, 'vip:v1:file:content', 'C', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (98, 77, '全部菜单', '', 0, '', NULL, '', NULL, 'base:menu:allRouter', 'I', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (119, 9, '栏目ID查找', '', 0, '', '', '', NULL, 'cms:category:findId', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (120, 9, '子栏目ID查找', '', 0, '', '', '', NULL, 'cms:category:findSubId', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (121, 9, '栏目搜索', '', 0, '', '', '', NULL, 'cms:category:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (122, 14, '文章列表', '', 0, '', '', '', NULL, 'cms:article:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (123, 14, '文章详情', '', 0, '', '', '', NULL, 'cms:article:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (124, 14, '文章统计', '', 0, '', '', '', NULL, 'cms:article:tongji', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (125, 14, '查找字段', '', 0, '', '', '', NULL, 'cms:article:findField', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (126, 14, '删除文件', '', 0, '', '', '', NULL, 'cms:article:delfile', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (127, 14, '文章搜索', '', 0, '', '', '', NULL, 'cms:article:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (128, 14, '七牛上传Token', '', 0, '', '', '', NULL, 'cms:qiniu:getUploadToken', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (129, 14, '七牛上传', '', 0, '', '', '', NULL, 'cms:qiniu:upload', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (132, 46, '模型使用情况', '', 0, '', '', '', NULL, 'cms:model:hasUse', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (133, 51, '字段列表', '', 0, '', '', '', NULL, 'cms:field:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (134, 51, '字段详情', '', 0, '', '', '', NULL, 'cms:field:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (137, 29, '碎片列表', '', 0, '', '', '', NULL, 'cms:frag:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (138, 29, '碎片详情', '', 0, '', '', '', NULL, 'cms:frag:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (139, 29, '碎片搜索', '', 0, '', '', '', NULL, 'cms:frag:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (140, 24, '标签列表', '', 0, '', '', '', NULL, 'cms:tag:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (141, 24, '标签详情', '', 0, '', '', '', NULL, 'cms:tag:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (142, 24, '标签检查', '', 0, '', '', '', NULL, 'cms:tag:has', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (143, 24, '标签搜索', '', 0, '', '', '', NULL, 'cms:tag:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (144, 56, '友情链接列表', '', 0, '', '', '', NULL, 'cms:friendlink:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (145, 56, '友情链接详情', '', 0, '', '', '', NULL, 'cms:friendlink:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (146, 61, '留言列表', '', 0, '', '', '', NULL, 'cms:message:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (147, 61, '留言详情', '', 0, '', '', '', NULL, 'cms:message:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (148, 61, '留言搜索', '', 0, '', '', '', NULL, 'cms:message:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (149, 19, '轮播列表', '', 0, '', '', '', NULL, 'cms:slide:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (150, 19, '轮播详情', '', 0, '', '', '', NULL, 'cms:slide:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (151, 19, '轮播搜索', '', 0, '', '', '', NULL, 'cms:slide:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (152, 35, '获取页面', '', 0, '', '', '', NULL, 'cms:collect:getPages', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (153, 35, '获取采集文章', '', 0, '', '', '', NULL, 'cms:collect:getArticle', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (154, 35, '采集列表', '', 0, '', '', '', NULL, 'cms:collect:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (155, 35, '采集详情', '', 0, '', '', '', NULL, 'cms:collect:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (156, 35, '采集搜索', '', 0, '', '', '', NULL, 'cms:collect:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (157, 40, '获取接口文章', '', 0, '', '', '', NULL, 'cms:gather:getArticle', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (158, 40, '接口采集列表', '', 0, '', '', '', NULL, 'cms:gather:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (159, 40, '接口采集详情', '', 0, '', '', '', NULL, 'cms:gather:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (160, 40, '接口采集搜索', '', 0, '', '', '', NULL, 'cms:gather:search', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (161, 82, '创建登录日志', '', 0, '', '', '', NULL, 'cms:loginLog:create', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (162, 82, '删除登录日志', '', 0, '', '', '', NULL, 'cms:loginLog:delete', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (163, 82, '登录日志列表', '', 0, '', '', '', NULL, 'cms:loginLog:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (164, 67, '用户角色详情', '', 0, '', '', '', NULL, 'base:userRole:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (165, 72, '角色菜单列表', '', 0, '', '', '', NULL, 'base:roleMenu:list', 'I', '2', '2', '2', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (166, 85, '配置获取列表', '', 0, '', '', '', NULL, 'base:config:getlist', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (167, 85, '配置批量更新', '', 0, '', '', '', NULL, 'base:config:updateMany', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (168, 67, '用户详情', '', 0, '', '', '', NULL, 'base:user:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (169, 72, '角色列表', '', 0, '', '', '', NULL, 'base:role:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (170, 94, '上传Logo', '', 0, '', '', '', NULL, 'base:upload:logo', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (171, 94, '上传图片', '', 0, '', '', '', NULL, 'base:upload:img', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (172, 94, '上传多图片', '', 0, '', '', '', NULL, 'base:upload:imgs', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (173, 94, '上传文件', '', 0, '', '', '', NULL, 'base:upload:file', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (174, 94, '上传多文件', '', 0, '', '', '', NULL, 'base:upload:files', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (175, 6, '运行环境', '', 0, '', '', '', NULL, 'cms:site:runEnv', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (176, 6, '系统应用查找', '', 0, '', '', '', NULL, 'cms:sysApp:find', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (177, 6, '系统应用视图', '', 0, '', '', '', NULL, 'cms:sysApp:views', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (178, 6, '系统应用文件夹', '', 0, '', '', '', NULL, 'cms:sysApp:folder', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (179, 6, '系统应用更新', '', 0, '', '', '', NULL, 'cms:sysApp:update', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (180, 77, '菜单列表', '', 0, '', '', '', NULL, 'base:menu:list', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (181, 84, '配置类型详情', '', 0, '', '', '', NULL, 'base:config-type:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (182, 85, '配置详情', '', 0, '', '', '', NULL, 'base:config:detail', 'F', '2', '2', '1', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (183, 77, '菜单列表', '', 0, '', NULL, '', NULL, 'base:menu:list', 'I', '2', '2', '2', NULL, '', NULL, '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告状态（0关闭  1正常）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色权限字符串(super/admin)',
  `sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '角色状态（1正常 2停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '删除标志（1代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (7, '超级管理员', 'super', 0, '1', '1', '', NULL, '', NULL, NULL);
INSERT INTO `sys_role` VALUES (8, '普通管理员', 'admin', 0, '1', '1', '', NULL, '', NULL, NULL);
INSERT INTO `sys_role` VALUES (9, '游客', 'visitor', 0, '1', '1', '', NULL, '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (7, 5);
INSERT INTO `sys_role_menu` VALUES (7, 6);
INSERT INTO `sys_role_menu` VALUES (7, 7);
INSERT INTO `sys_role_menu` VALUES (7, 8);
INSERT INTO `sys_role_menu` VALUES (7, 9);
INSERT INTO `sys_role_menu` VALUES (7, 10);
INSERT INTO `sys_role_menu` VALUES (7, 11);
INSERT INTO `sys_role_menu` VALUES (7, 12);
INSERT INTO `sys_role_menu` VALUES (7, 13);
INSERT INTO `sys_role_menu` VALUES (7, 14);
INSERT INTO `sys_role_menu` VALUES (7, 15);
INSERT INTO `sys_role_menu` VALUES (7, 16);
INSERT INTO `sys_role_menu` VALUES (7, 17);
INSERT INTO `sys_role_menu` VALUES (7, 18);
INSERT INTO `sys_role_menu` VALUES (7, 19);
INSERT INTO `sys_role_menu` VALUES (7, 20);
INSERT INTO `sys_role_menu` VALUES (7, 21);
INSERT INTO `sys_role_menu` VALUES (7, 22);
INSERT INTO `sys_role_menu` VALUES (7, 23);
INSERT INTO `sys_role_menu` VALUES (7, 24);
INSERT INTO `sys_role_menu` VALUES (7, 25);
INSERT INTO `sys_role_menu` VALUES (7, 26);
INSERT INTO `sys_role_menu` VALUES (7, 27);
INSERT INTO `sys_role_menu` VALUES (7, 28);
INSERT INTO `sys_role_menu` VALUES (7, 29);
INSERT INTO `sys_role_menu` VALUES (7, 30);
INSERT INTO `sys_role_menu` VALUES (7, 31);
INSERT INTO `sys_role_menu` VALUES (7, 32);
INSERT INTO `sys_role_menu` VALUES (7, 33);
INSERT INTO `sys_role_menu` VALUES (7, 35);
INSERT INTO `sys_role_menu` VALUES (7, 36);
INSERT INTO `sys_role_menu` VALUES (7, 37);
INSERT INTO `sys_role_menu` VALUES (7, 38);
INSERT INTO `sys_role_menu` VALUES (7, 39);
INSERT INTO `sys_role_menu` VALUES (7, 40);
INSERT INTO `sys_role_menu` VALUES (7, 41);
INSERT INTO `sys_role_menu` VALUES (7, 42);
INSERT INTO `sys_role_menu` VALUES (7, 43);
INSERT INTO `sys_role_menu` VALUES (7, 44);
INSERT INTO `sys_role_menu` VALUES (7, 45);
INSERT INTO `sys_role_menu` VALUES (7, 46);
INSERT INTO `sys_role_menu` VALUES (7, 47);
INSERT INTO `sys_role_menu` VALUES (7, 48);
INSERT INTO `sys_role_menu` VALUES (7, 49);
INSERT INTO `sys_role_menu` VALUES (7, 50);
INSERT INTO `sys_role_menu` VALUES (7, 51);
INSERT INTO `sys_role_menu` VALUES (7, 52);
INSERT INTO `sys_role_menu` VALUES (7, 53);
INSERT INTO `sys_role_menu` VALUES (7, 54);
INSERT INTO `sys_role_menu` VALUES (7, 55);
INSERT INTO `sys_role_menu` VALUES (7, 56);
INSERT INTO `sys_role_menu` VALUES (7, 57);
INSERT INTO `sys_role_menu` VALUES (7, 58);
INSERT INTO `sys_role_menu` VALUES (7, 59);
INSERT INTO `sys_role_menu` VALUES (7, 60);
INSERT INTO `sys_role_menu` VALUES (7, 61);
INSERT INTO `sys_role_menu` VALUES (7, 62);
INSERT INTO `sys_role_menu` VALUES (7, 63);
INSERT INTO `sys_role_menu` VALUES (7, 64);
INSERT INTO `sys_role_menu` VALUES (7, 65);
INSERT INTO `sys_role_menu` VALUES (7, 66);
INSERT INTO `sys_role_menu` VALUES (7, 67);
INSERT INTO `sys_role_menu` VALUES (7, 68);
INSERT INTO `sys_role_menu` VALUES (7, 69);
INSERT INTO `sys_role_menu` VALUES (7, 70);
INSERT INTO `sys_role_menu` VALUES (7, 71);
INSERT INTO `sys_role_menu` VALUES (7, 72);
INSERT INTO `sys_role_menu` VALUES (7, 73);
INSERT INTO `sys_role_menu` VALUES (7, 74);
INSERT INTO `sys_role_menu` VALUES (7, 75);
INSERT INTO `sys_role_menu` VALUES (7, 76);
INSERT INTO `sys_role_menu` VALUES (7, 77);
INSERT INTO `sys_role_menu` VALUES (7, 78);
INSERT INTO `sys_role_menu` VALUES (7, 79);
INSERT INTO `sys_role_menu` VALUES (7, 80);
INSERT INTO `sys_role_menu` VALUES (7, 81);
INSERT INTO `sys_role_menu` VALUES (7, 82);
INSERT INTO `sys_role_menu` VALUES (7, 83);
INSERT INTO `sys_role_menu` VALUES (7, 84);
INSERT INTO `sys_role_menu` VALUES (7, 85);
INSERT INTO `sys_role_menu` VALUES (7, 86);
INSERT INTO `sys_role_menu` VALUES (7, 87);
INSERT INTO `sys_role_menu` VALUES (7, 88);
INSERT INTO `sys_role_menu` VALUES (7, 89);
INSERT INTO `sys_role_menu` VALUES (7, 90);
INSERT INTO `sys_role_menu` VALUES (7, 91);
INSERT INTO `sys_role_menu` VALUES (7, 92);
INSERT INTO `sys_role_menu` VALUES (7, 93);
INSERT INTO `sys_role_menu` VALUES (7, 94);
INSERT INTO `sys_role_menu` VALUES (7, 95);
INSERT INTO `sys_role_menu` VALUES (7, 96);
INSERT INTO `sys_role_menu` VALUES (7, 97);
INSERT INTO `sys_role_menu` VALUES (7, 98);
INSERT INTO `sys_role_menu` VALUES (7, 119);
INSERT INTO `sys_role_menu` VALUES (7, 120);
INSERT INTO `sys_role_menu` VALUES (7, 121);
INSERT INTO `sys_role_menu` VALUES (7, 122);
INSERT INTO `sys_role_menu` VALUES (7, 123);
INSERT INTO `sys_role_menu` VALUES (7, 124);
INSERT INTO `sys_role_menu` VALUES (7, 125);
INSERT INTO `sys_role_menu` VALUES (7, 126);
INSERT INTO `sys_role_menu` VALUES (7, 127);
INSERT INTO `sys_role_menu` VALUES (7, 128);
INSERT INTO `sys_role_menu` VALUES (7, 129);
INSERT INTO `sys_role_menu` VALUES (7, 130);
INSERT INTO `sys_role_menu` VALUES (7, 131);
INSERT INTO `sys_role_menu` VALUES (7, 132);
INSERT INTO `sys_role_menu` VALUES (7, 133);
INSERT INTO `sys_role_menu` VALUES (7, 134);
INSERT INTO `sys_role_menu` VALUES (7, 135);
INSERT INTO `sys_role_menu` VALUES (7, 136);
INSERT INTO `sys_role_menu` VALUES (7, 137);
INSERT INTO `sys_role_menu` VALUES (7, 138);
INSERT INTO `sys_role_menu` VALUES (7, 139);
INSERT INTO `sys_role_menu` VALUES (7, 140);
INSERT INTO `sys_role_menu` VALUES (7, 141);
INSERT INTO `sys_role_menu` VALUES (7, 142);
INSERT INTO `sys_role_menu` VALUES (7, 143);
INSERT INTO `sys_role_menu` VALUES (7, 144);
INSERT INTO `sys_role_menu` VALUES (7, 145);
INSERT INTO `sys_role_menu` VALUES (7, 146);
INSERT INTO `sys_role_menu` VALUES (7, 147);
INSERT INTO `sys_role_menu` VALUES (7, 148);
INSERT INTO `sys_role_menu` VALUES (7, 149);
INSERT INTO `sys_role_menu` VALUES (7, 150);
INSERT INTO `sys_role_menu` VALUES (7, 151);
INSERT INTO `sys_role_menu` VALUES (7, 152);
INSERT INTO `sys_role_menu` VALUES (7, 153);
INSERT INTO `sys_role_menu` VALUES (7, 154);
INSERT INTO `sys_role_menu` VALUES (7, 155);
INSERT INTO `sys_role_menu` VALUES (7, 156);
INSERT INTO `sys_role_menu` VALUES (7, 157);
INSERT INTO `sys_role_menu` VALUES (7, 158);
INSERT INTO `sys_role_menu` VALUES (7, 159);
INSERT INTO `sys_role_menu` VALUES (7, 160);
INSERT INTO `sys_role_menu` VALUES (7, 161);
INSERT INTO `sys_role_menu` VALUES (7, 162);
INSERT INTO `sys_role_menu` VALUES (7, 163);
INSERT INTO `sys_role_menu` VALUES (7, 164);
INSERT INTO `sys_role_menu` VALUES (7, 165);
INSERT INTO `sys_role_menu` VALUES (7, 166);
INSERT INTO `sys_role_menu` VALUES (7, 167);
INSERT INTO `sys_role_menu` VALUES (7, 168);
INSERT INTO `sys_role_menu` VALUES (7, 169);
INSERT INTO `sys_role_menu` VALUES (7, 170);
INSERT INTO `sys_role_menu` VALUES (7, 171);
INSERT INTO `sys_role_menu` VALUES (7, 172);
INSERT INTO `sys_role_menu` VALUES (7, 173);
INSERT INTO `sys_role_menu` VALUES (7, 174);
INSERT INTO `sys_role_menu` VALUES (7, 175);
INSERT INTO `sys_role_menu` VALUES (7, 176);
INSERT INTO `sys_role_menu` VALUES (7, 177);
INSERT INTO `sys_role_menu` VALUES (7, 178);
INSERT INTO `sys_role_menu` VALUES (7, 179);
INSERT INTO `sys_role_menu` VALUES (7, 180);
INSERT INTO `sys_role_menu` VALUES (7, 181);
INSERT INTO `sys_role_menu` VALUES (7, 182);
INSERT INTO `sys_role_menu` VALUES (8, 5);
INSERT INTO `sys_role_menu` VALUES (8, 6);
INSERT INTO `sys_role_menu` VALUES (8, 7);
INSERT INTO `sys_role_menu` VALUES (8, 8);
INSERT INTO `sys_role_menu` VALUES (8, 9);
INSERT INTO `sys_role_menu` VALUES (8, 10);
INSERT INTO `sys_role_menu` VALUES (8, 11);
INSERT INTO `sys_role_menu` VALUES (8, 12);
INSERT INTO `sys_role_menu` VALUES (8, 13);
INSERT INTO `sys_role_menu` VALUES (8, 14);
INSERT INTO `sys_role_menu` VALUES (8, 15);
INSERT INTO `sys_role_menu` VALUES (8, 16);
INSERT INTO `sys_role_menu` VALUES (8, 17);
INSERT INTO `sys_role_menu` VALUES (8, 18);
INSERT INTO `sys_role_menu` VALUES (8, 19);
INSERT INTO `sys_role_menu` VALUES (8, 20);
INSERT INTO `sys_role_menu` VALUES (8, 21);
INSERT INTO `sys_role_menu` VALUES (8, 22);
INSERT INTO `sys_role_menu` VALUES (8, 23);
INSERT INTO `sys_role_menu` VALUES (8, 24);
INSERT INTO `sys_role_menu` VALUES (8, 25);
INSERT INTO `sys_role_menu` VALUES (8, 26);
INSERT INTO `sys_role_menu` VALUES (8, 27);
INSERT INTO `sys_role_menu` VALUES (8, 28);
INSERT INTO `sys_role_menu` VALUES (8, 29);
INSERT INTO `sys_role_menu` VALUES (8, 30);
INSERT INTO `sys_role_menu` VALUES (8, 31);
INSERT INTO `sys_role_menu` VALUES (8, 32);
INSERT INTO `sys_role_menu` VALUES (8, 33);
INSERT INTO `sys_role_menu` VALUES (8, 56);
INSERT INTO `sys_role_menu` VALUES (8, 57);
INSERT INTO `sys_role_menu` VALUES (8, 58);
INSERT INTO `sys_role_menu` VALUES (8, 59);
INSERT INTO `sys_role_menu` VALUES (8, 60);
INSERT INTO `sys_role_menu` VALUES (8, 61);
INSERT INTO `sys_role_menu` VALUES (8, 62);
INSERT INTO `sys_role_menu` VALUES (8, 63);
INSERT INTO `sys_role_menu` VALUES (8, 64);
INSERT INTO `sys_role_menu` VALUES (8, 65);
INSERT INTO `sys_role_menu` VALUES (8, 67);
INSERT INTO `sys_role_menu` VALUES (8, 68);
INSERT INTO `sys_role_menu` VALUES (8, 69);
INSERT INTO `sys_role_menu` VALUES (8, 70);
INSERT INTO `sys_role_menu` VALUES (8, 71);
INSERT INTO `sys_role_menu` VALUES (8, 82);
INSERT INTO `sys_role_menu` VALUES (8, 83);
INSERT INTO `sys_role_menu` VALUES (8, 84);
INSERT INTO `sys_role_menu` VALUES (8, 85);
INSERT INTO `sys_role_menu` VALUES (8, 86);
INSERT INTO `sys_role_menu` VALUES (8, 87);
INSERT INTO `sys_role_menu` VALUES (8, 88);
INSERT INTO `sys_role_menu` VALUES (8, 89);
INSERT INTO `sys_role_menu` VALUES (8, 90);
INSERT INTO `sys_role_menu` VALUES (8, 91);
INSERT INTO `sys_role_menu` VALUES (8, 92);
INSERT INTO `sys_role_menu` VALUES (8, 93);
INSERT INTO `sys_role_menu` VALUES (8, 119);
INSERT INTO `sys_role_menu` VALUES (8, 120);
INSERT INTO `sys_role_menu` VALUES (8, 121);
INSERT INTO `sys_role_menu` VALUES (8, 122);
INSERT INTO `sys_role_menu` VALUES (8, 123);
INSERT INTO `sys_role_menu` VALUES (8, 124);
INSERT INTO `sys_role_menu` VALUES (8, 125);
INSERT INTO `sys_role_menu` VALUES (8, 126);
INSERT INTO `sys_role_menu` VALUES (8, 127);
INSERT INTO `sys_role_menu` VALUES (8, 128);
INSERT INTO `sys_role_menu` VALUES (8, 129);
INSERT INTO `sys_role_menu` VALUES (8, 137);
INSERT INTO `sys_role_menu` VALUES (8, 138);
INSERT INTO `sys_role_menu` VALUES (8, 139);
INSERT INTO `sys_role_menu` VALUES (8, 140);
INSERT INTO `sys_role_menu` VALUES (8, 141);
INSERT INTO `sys_role_menu` VALUES (8, 142);
INSERT INTO `sys_role_menu` VALUES (8, 143);
INSERT INTO `sys_role_menu` VALUES (8, 144);
INSERT INTO `sys_role_menu` VALUES (8, 145);
INSERT INTO `sys_role_menu` VALUES (8, 146);
INSERT INTO `sys_role_menu` VALUES (8, 147);
INSERT INTO `sys_role_menu` VALUES (8, 148);
INSERT INTO `sys_role_menu` VALUES (8, 149);
INSERT INTO `sys_role_menu` VALUES (8, 150);
INSERT INTO `sys_role_menu` VALUES (8, 151);
INSERT INTO `sys_role_menu` VALUES (8, 161);
INSERT INTO `sys_role_menu` VALUES (8, 162);
INSERT INTO `sys_role_menu` VALUES (8, 163);
INSERT INTO `sys_role_menu` VALUES (8, 164);
INSERT INTO `sys_role_menu` VALUES (8, 166);
INSERT INTO `sys_role_menu` VALUES (8, 167);
INSERT INTO `sys_role_menu` VALUES (8, 168);
INSERT INTO `sys_role_menu` VALUES (8, 175);
INSERT INTO `sys_role_menu` VALUES (8, 176);
INSERT INTO `sys_role_menu` VALUES (8, 177);
INSERT INTO `sys_role_menu` VALUES (8, 178);
INSERT INTO `sys_role_menu` VALUES (8, 179);
INSERT INTO `sys_role_menu` VALUES (8, 181);
INSERT INTO `sys_role_menu` VALUES (8, 182);
INSERT INTO `sys_role_menu` VALUES (9, 5);
INSERT INTO `sys_role_menu` VALUES (9, 7);
INSERT INTO `sys_role_menu` VALUES (9, 13);
INSERT INTO `sys_role_menu` VALUES (9, 18);
INSERT INTO `sys_role_menu` VALUES (9, 23);
INSERT INTO `sys_role_menu` VALUES (9, 28);
INSERT INTO `sys_role_menu` VALUES (9, 33);
INSERT INTO `sys_role_menu` VALUES (9, 39);
INSERT INTO `sys_role_menu` VALUES (9, 44);
INSERT INTO `sys_role_menu` VALUES (9, 50);
INSERT INTO `sys_role_menu` VALUES (9, 55);
INSERT INTO `sys_role_menu` VALUES (9, 60);
INSERT INTO `sys_role_menu` VALUES (9, 65);
INSERT INTO `sys_role_menu` VALUES (9, 71);
INSERT INTO `sys_role_menu` VALUES (9, 98);
INSERT INTO `sys_role_menu` VALUES (9, 119);
INSERT INTO `sys_role_menu` VALUES (9, 120);
INSERT INTO `sys_role_menu` VALUES (9, 121);
INSERT INTO `sys_role_menu` VALUES (9, 122);
INSERT INTO `sys_role_menu` VALUES (9, 123);
INSERT INTO `sys_role_menu` VALUES (9, 124);
INSERT INTO `sys_role_menu` VALUES (9, 125);
INSERT INTO `sys_role_menu` VALUES (9, 127);
INSERT INTO `sys_role_menu` VALUES (9, 133);
INSERT INTO `sys_role_menu` VALUES (9, 134);
INSERT INTO `sys_role_menu` VALUES (9, 137);
INSERT INTO `sys_role_menu` VALUES (9, 138);
INSERT INTO `sys_role_menu` VALUES (9, 139);
INSERT INTO `sys_role_menu` VALUES (9, 140);
INSERT INTO `sys_role_menu` VALUES (9, 141);
INSERT INTO `sys_role_menu` VALUES (9, 143);
INSERT INTO `sys_role_menu` VALUES (9, 144);
INSERT INTO `sys_role_menu` VALUES (9, 145);
INSERT INTO `sys_role_menu` VALUES (9, 149);
INSERT INTO `sys_role_menu` VALUES (9, 150);
INSERT INTO `sys_role_menu` VALUES (9, 151);
INSERT INTO `sys_role_menu` VALUES (9, 152);
INSERT INTO `sys_role_menu` VALUES (9, 154);
INSERT INTO `sys_role_menu` VALUES (9, 155);
INSERT INTO `sys_role_menu` VALUES (9, 156);
INSERT INTO `sys_role_menu` VALUES (9, 157);
INSERT INTO `sys_role_menu` VALUES (9, 158);
INSERT INTO `sys_role_menu` VALUES (9, 159);
INSERT INTO `sys_role_menu` VALUES (9, 160);
INSERT INTO `sys_role_menu` VALUES (9, 161);
INSERT INTO `sys_role_menu` VALUES (9, 163);
INSERT INTO `sys_role_menu` VALUES (9, 165);
INSERT INTO `sys_role_menu` VALUES (9, 169);
INSERT INTO `sys_role_menu` VALUES (9, 183);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录账号',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户昵称',
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '盐加密',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像路径',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '手机号码',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (12, 'admin', '', '$2b$12$MNOt0mXmoftvWoilZODR6.Zzu2/4xHBzKDxMy5tToxHCz0mAl3zYa', '', '', '0', '', '', '', NULL, '', NULL, '', NULL, NULL, '1', NULL);
INSERT INTO `sys_user` VALUES (14, 'chancms', '', '$2b$12$dpe9JuqruCRtDhUvAyISru2uUEQ.8LEvf6HSTayn5Sipim..Pn0QG', '', '', '0', '', '', '', NULL, '', NULL, '', NULL, NULL, '1', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (11, 7);
INSERT INTO `sys_user_role` VALUES (12, 8);
INSERT INTO `sys_user_role` VALUES (14, 7);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '性别（0-未知 1-男 2-女 ）',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `wechat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态 1-启用 2-关闭',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录ip',
  `login_date` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次登录时间',
  `pwd_update_date` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次修改密码时间',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册日期',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `user_email`(`email`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `login_date`(`login_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000021 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员表(核心)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (10000002, 'yanyutao', NULL, '$2b$12$nNVIi36haebQlzHLTsPpduXms72RSUUTrJXBFJ3dqVyDz1VCOkVG6', '1', '867528315@qq.com', 'yanyutao2014', '13366826071', NULL, NULL, NULL, '2025-11-07 11:51:25', '2025-11-07 11:51:25', '2025-09-11 19:16:00', '2025-11-07 11:51:25', '凡有所相，皆为虚妄1234');
INSERT INTO `user` VALUES (10000003, 'zhangyong', NULL, '$2b$12$7nPtIZ9upiEUiRftPipqmOX7mi1/QCfvbmyJ9YStHzZGUgCkVngqG', '0', 'zhangyong_1430@163.com', NULL, NULL, NULL, NULL, NULL, '2025-09-12 09:47:00', '2025-09-12 09:47:00', '2025-09-12 09:47:00', '2025-09-12 09:47:00', NULL);
INSERT INTO `user` VALUES (10000011, 'yanyutao1', NULL, '$2b$12$pQ1uUgg9ySD93fxtFPoJl.GHduP/6djp2xuc22Ni1xs/zWSjV/opO', '0', '8675283151@qq.com', NULL, NULL, NULL, NULL, NULL, '2025-09-12 11:31:44', '2025-09-12 11:31:44', '2025-09-12 11:31:44', '2025-09-12 11:31:44', NULL);
INSERT INTO `user` VALUES (10000012, 'yanyutao2023', NULL, '$2b$12$oXfmsnZLyxzq.199E9VA3O1YSpK1Xz6CWvvmoHGi48AdFM3uXZ2aK', '0', 'yanyutao2023@163.com', NULL, NULL, NULL, NULL, NULL, '2025-09-26 13:37:10', '2025-09-26 13:37:10', '2025-09-26 13:37:10', '2025-09-26 13:37:10', NULL);
INSERT INTO `user` VALUES (10000013, 'wx_mhkokn1l_9707', 'wx_yhWv4k', NULL, '0', NULL, NULL, NULL, '', '1', '122.96.14.142', '2025-11-23 22:36:17', '2025-11-23 22:36:17', '2025-11-04 22:45:07', '2025-11-23 22:36:17', NULL);
INSERT INTO `user` VALUES (10000014, 'wx_mhobaf5h_c623', 'wx__qkAYw', NULL, '0', NULL, NULL, NULL, '', '1', '58.16.130.22', '2025-11-07 11:44:20', '2025-11-07 11:44:20', '2025-11-07 11:44:20', '2025-11-07 11:44:20', NULL);
INSERT INTO `user` VALUES (10000015, 'wx_mhobaydr_9c3a', 'wx_UHpbe8', NULL, '0', NULL, NULL, NULL, '', '1', '113.88.92.176', '2025-11-07 11:44:44', '2025-11-07 11:44:44', '2025-11-07 11:44:45', '2025-11-07 11:44:45', NULL);
INSERT INTO `user` VALUES (10000016, 'wx_mhobba0a_eacf', 'wx_k__DF4', NULL, '0', NULL, NULL, NULL, '', '1', '116.21.134.33', '2025-11-07 11:45:00', '2025-11-07 11:45:00', '2025-11-07 11:45:00', '2025-11-07 11:45:00', NULL);
INSERT INTO `user` VALUES (10000017, 'wx_mhobq4hi_82ed', 'wx_rQePXk', NULL, '0', NULL, NULL, NULL, '', '1', '20.222.140.205', '2025-11-07 11:56:32', '2025-11-07 11:56:32', '2025-11-07 11:56:33', '2025-11-07 11:56:33', NULL);
INSERT INTO `user` VALUES (10000018, 'wx_mhoe1uf0_abe9', 'wx_Fh-2a8', NULL, '0', NULL, NULL, NULL, '', '1', '111.204.255.130', '2025-11-07 13:01:38', '2025-11-07 13:01:38', '2025-11-07 13:01:39', '2025-11-07 13:01:39', NULL);
INSERT INTO `user` VALUES (10000019, 'wx_mhshtv4c_f4e9', 'wx_GPsJ_Q', NULL, '0', NULL, NULL, NULL, '', '1', '223.160.208.3', '2025-11-10 09:58:29', '2025-11-10 09:58:29', '2025-11-10 09:58:30', '2025-11-10 09:58:30', NULL);
INSERT INTO `user` VALUES (10000020, 'setvet', NULL, '$2b$12$DBETVWNW48wcpnNL1nZgYeDzT0x0Aag6BtNJmbL5ed9gxKhQ2VFZ.', '0', '424052164@qq.com', NULL, NULL, NULL, NULL, NULL, '2025-11-22 16:00:43', '2025-11-22 16:00:43', '2025-11-22 16:00:43', '2025-11-22 16:00:43', NULL);

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '等级代码 super0注册 super1 月 super2 季  super3年 super9永久会员',
  `level_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '等级显示名称',
  `days_valid` int(11) NULL DEFAULT NULL COMMENT '有效天数（null表示永久）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `level_code`(`level_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员等级' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_level
-- ----------------------------

-- ----------------------------
-- Table structure for user_levelship
-- ----------------------------
DROP TABLE IF EXISTS `user_levelship`;
CREATE TABLE `user_levelship`  (
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `level_id`(`level_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员等级关系(核心)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_levelship
-- ----------------------------

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `payment_method` enum('alipay') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'alipay',
  `status` enum('pending','paid','expired','refunded') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `paid_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no`(`order_no`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_order
-- ----------------------------

-- ----------------------------
-- Table structure for user_product
-- ----------------------------
DROP TABLE IF EXISTS `user_product`;
CREATE TABLE `user_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品名称（月/季/年会员）',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `level_id` int(11) NOT NULL COMMENT '关联的会员等级',
  `duration_days` int(255) NULL DEFAULT NULL COMMENT '有效天数',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'active',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `level_id`(`level_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '产品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_product
-- ----------------------------

-- ----------------------------
-- Table structure for user_reading_record
-- ----------------------------
DROP TABLE IF EXISTS `user_reading_record`;
CREATE TABLE `user_reading_record`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `read_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '阅读记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_reading_record
-- ----------------------------

-- ----------------------------
-- Table structure for user_social_login
-- ----------------------------
DROP TABLE IF EXISTS `user_social_login`;
CREATE TABLE `user_social_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '逻辑关联 user.id（无外键）',
  `platform` enum('wechat','qq') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '第三方平台',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '平台OpenID',
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信UnionID（跨应用唯一）',
  `sex` tinyint(1) NULL DEFAULT 0 COMMENT '第三方性别',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问令牌',
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '刷新令牌',
  `expires_in` int(11) NULL DEFAULT 7200 COMMENT '过期时间（秒）',
  `token_updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'token更新时间',
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登录ip',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_platform_openid`(`platform`, `openid`) USING BTREE,
  UNIQUE INDEX `uniq_unionid`(`unionid`, `platform`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_unionid`(`unionid`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方登录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_social_login
-- ----------------------------
INSERT INTO `user_social_login` VALUES (1, 10000013, 'wechat', 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, 0, '', '', '', '97_oP_Br_VA40Uo0o_m3qvMJrr4thpkB5HZURMzZ4v98uSpBzjt9Kr2RZXjj5W5cKaQ4XkDhLGtaRNMgsGcUk2NwKDJ_o3lfBTz7Gm0gCX_be4', '97_c9t9ZHe9-CXsD2fh4DvJoVKbu041uWVqvnFzm4xybNVbcGnN2bnbiF4Cw_Rty4H1l3szUqy7gy9Mxu2LxvkQcB7w4OZvaIfMUnPq8YX-Jhg', 7200, '2025-11-23 22:36:17', '122.96.14.142', '2025-11-04 22:45:07', '2025-11-23 22:36:17');
INSERT INTO `user_social_login` VALUES (2, 10000014, 'wechat', 'oPW1t2KC7YTW2ZlfuX2HrJ_qkAYw', NULL, 0, '', '', '', NULL, NULL, 7200, '2025-11-07 11:44:20', NULL, '2025-11-07 11:44:20', '2025-11-07 11:44:20');
INSERT INTO `user_social_login` VALUES (3, 10000015, 'wechat', 'oPW1t2LK2ubjCwIeDdCMwSUHpbe8', NULL, 0, '', '', '', NULL, NULL, 7200, '2025-11-07 11:44:44', NULL, '2025-11-07 11:44:45', '2025-11-07 11:44:45');
INSERT INTO `user_social_login` VALUES (4, 10000016, 'wechat', 'oPW1t2LpL2h1RRUPLTaVvZk__DF4', NULL, 0, '', '', '', NULL, NULL, 7200, '2025-11-07 11:45:00', NULL, '2025-11-07 11:45:00', '2025-11-07 11:45:00');
INSERT INTO `user_social_login` VALUES (5, 10000017, 'wechat', 'oPW1t2EQwBBvf1OTo8UXV6rQePXk', NULL, 0, '', '', '', NULL, NULL, 7200, '2025-11-07 11:56:32', NULL, '2025-11-07 11:56:33', '2025-11-07 11:56:33');
INSERT INTO `user_social_login` VALUES (6, 10000018, 'wechat', 'oPW1t2BGDQfPMX3KX8lTBvFh-2a8', NULL, 0, '', '', '', NULL, NULL, 7200, '2025-11-07 13:01:38', NULL, '2025-11-07 13:01:39', '2025-11-07 13:01:39');
INSERT INTO `user_social_login` VALUES (7, 10000019, 'wechat', 'oPW1t2MsoyBhHKgNoG0kxvGPsJ_Q', NULL, 0, '', '', '', NULL, NULL, 7200, '2025-11-10 09:58:29', NULL, '2025-11-10 09:58:30', '2025-11-10 09:58:30');

-- ----------------------------
-- Table structure for user_verification_codes
-- ----------------------------
DROP TABLE IF EXISTS `user_verification_codes`;
CREATE TABLE `user_verification_codes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱地址',
  `code` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '6位验证码',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-未使用\r\n2-已使用 3-已过期',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `expires_at` datetime NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `udx_email_scene`(`email`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_verification_codes
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_scan_login
-- ----------------------------
DROP TABLE IF EXISTS `wechat_scan_login`;
CREATE TABLE `wechat_scan_login`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `scan_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一扫码标识（生成二维码时创建，格式如 scan_xxxx）',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态：0=未扫码，1=已关注待登录，2=已登录，3=已过期',
  `openid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '扫码用户的微信openid（用户关注后填充）',
  `unionid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '扫码用户的微信unionid（如有则填充，用于多公众号统一用户）',
  `expire_time` datetime NOT NULL COMMENT '二维码过期时间（默认5分钟，与微信临时二维码有效期一致）',
  `client_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成二维码时的客户端IP（可选，用于日志追溯）',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间（自动更新）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_scan_id`(`scan_id`) USING BTREE COMMENT '唯一索引：确保scan_id不重复',
  INDEX `idx_openid`(`openid`) USING BTREE COMMENT '普通索引：优化按openid查询的效率',
  INDEX `idx_status_expire`(`status`, `expire_time`) USING BTREE COMMENT '联合索引：优化按状态+过期时间查询的效率'
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信公众号扫码登录状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wechat_scan_login
-- ----------------------------
INSERT INTO `wechat_scan_login` VALUES (1, 'scan_95ff7f98a7aff3aee6072940', 0, NULL, NULL, '2025-11-01 22:33:39', '127.0.0.1', '2025-11-01 22:28:39', '2025-11-01 22:28:39');
INSERT INTO `wechat_scan_login` VALUES (2, 'scan_9b2540c847a78867f2f1d81f', 0, NULL, NULL, '2025-11-01 22:36:49', '127.0.0.1', '2025-11-01 22:31:49', '2025-11-01 22:31:49');
INSERT INTO `wechat_scan_login` VALUES (3, 'scan_d759686fde151a46d29af3fc', 0, NULL, NULL, '2025-11-01 22:37:05', '127.0.0.1', '2025-11-01 22:32:05', '2025-11-01 22:32:05');
INSERT INTO `wechat_scan_login` VALUES (4, 'scan_b9822bab85d115cbf09d348a', 0, NULL, NULL, '2025-11-01 22:38:56', '127.0.0.1', '2025-11-01 22:33:57', '2025-11-01 22:33:57');
INSERT INTO `wechat_scan_login` VALUES (5, 'scan_ac166311eace9db93cc6bce3', 0, NULL, NULL, '2025-11-01 22:39:01', '127.0.0.1', '2025-11-01 22:34:02', '2025-11-01 22:34:02');
INSERT INTO `wechat_scan_login` VALUES (6, 'scan_f4ab3301b6fe2f8b47e669a3', 0, NULL, NULL, '2025-11-01 22:40:08', '127.0.0.1', '2025-11-01 22:35:09', '2025-11-01 22:35:09');
INSERT INTO `wechat_scan_login` VALUES (7, 'scan_c7384d1ff76884fc786f24f8', 0, NULL, NULL, '2025-11-01 22:40:45', '127.0.0.1', '2025-11-01 22:35:45', '2025-11-01 22:35:45');
INSERT INTO `wechat_scan_login` VALUES (8, 'scan_aef3191e028c096bed5d2955', 0, NULL, NULL, '2025-11-01 22:45:16', '127.0.0.1', '2025-11-01 22:40:16', '2025-11-01 22:40:16');
INSERT INTO `wechat_scan_login` VALUES (9, 'scan_c0d1fb183ffad55fea8a2c6f', 0, NULL, NULL, '2025-11-01 22:49:35', '127.0.0.1', '2025-11-01 22:44:35', '2025-11-01 22:44:35');
INSERT INTO `wechat_scan_login` VALUES (10, 'scan_0cbdf2e87af30fa6c96fe473', 3, NULL, NULL, '2025-11-01 22:50:06', '127.0.0.1', '2025-11-01 22:45:06', '2025-11-01 22:50:06');
INSERT INTO `wechat_scan_login` VALUES (11, 'scan_1e3b72a46ec51748af86f43e', 0, NULL, NULL, '2025-11-01 22:58:02', '127.0.0.1', '2025-11-01 22:53:03', '2025-11-01 22:53:03');
INSERT INTO `wechat_scan_login` VALUES (12, 'scan_f2a89d59b6f3cbb0fb58ec40', 0, NULL, NULL, '2025-11-01 22:58:11', '127.0.0.1', '2025-11-01 22:53:11', '2025-11-01 22:53:11');
INSERT INTO `wechat_scan_login` VALUES (13, 'scan_6532b6a98bdd2e22037eb843', 0, NULL, NULL, '2025-11-01 23:00:28', '127.0.0.1', '2025-11-01 22:55:29', '2025-11-01 22:55:29');
INSERT INTO `wechat_scan_login` VALUES (14, 'scan_541c95b3914d474600df660b', 0, NULL, NULL, '2025-11-01 23:00:37', '127.0.0.1', '2025-11-01 22:55:37', '2025-11-01 22:55:37');
INSERT INTO `wechat_scan_login` VALUES (15, 'scan_a8c3d4cc654721e867858d0e', 0, NULL, NULL, '2025-11-01 23:01:15', '127.0.0.1', '2025-11-01 22:56:16', '2025-11-01 22:56:16');
INSERT INTO `wechat_scan_login` VALUES (16, 'scan_b63e26d56cc5dd11f30f75cd', 0, NULL, NULL, '2025-11-01 23:06:32', '127.0.0.1', '2025-11-01 23:01:32', '2025-11-01 23:01:32');
INSERT INTO `wechat_scan_login` VALUES (17, 'scan_6ece1870e762b5e47463b821', 0, NULL, NULL, '2025-11-01 23:06:41', '127.0.0.1', '2025-11-01 23:01:42', '2025-11-01 23:01:42');
INSERT INTO `wechat_scan_login` VALUES (18, 'scan_4b8c3f53d68d823e2eb76253', 0, NULL, NULL, '2025-11-01 23:06:55', '127.0.0.1', '2025-11-01 23:01:56', '2025-11-01 23:01:56');
INSERT INTO `wechat_scan_login` VALUES (19, 'scan_6d4be695f5174204c099b424', 0, NULL, NULL, '2025-11-01 23:11:24', '127.0.0.1', '2025-11-01 23:06:24', '2025-11-01 23:06:24');
INSERT INTO `wechat_scan_login` VALUES (20, 'scan_1a91f678abec179d137515c7', 0, NULL, NULL, '2025-11-01 23:12:05', '127.0.0.1', '2025-11-01 23:07:06', '2025-11-01 23:07:06');
INSERT INTO `wechat_scan_login` VALUES (21, 'scan_d78435326bdef0029dbe1f45', 0, NULL, NULL, '2025-11-04 16:16:56', '101.125.4.179', '2025-11-04 16:11:56', '2025-11-04 16:11:56');
INSERT INTO `wechat_scan_login` VALUES (22, 'scan_fd47b335c4b866d0cf110649', 0, NULL, NULL, '2025-11-04 16:53:02', '101.125.4.179', '2025-11-04 16:48:02', '2025-11-04 16:48:02');
INSERT INTO `wechat_scan_login` VALUES (23, 'scan_938e08054c9d1affa11687ac', 0, NULL, NULL, '2025-11-04 22:22:46', '122.96.14.142', '2025-11-04 22:17:47', '2025-11-04 22:17:47');
INSERT INTO `wechat_scan_login` VALUES (24, 'scan_b73ba71f2136152bd809c855', 0, NULL, NULL, '2025-11-04 22:25:31', '122.96.14.142', '2025-11-04 22:20:31', '2025-11-04 22:20:31');
INSERT INTO `wechat_scan_login` VALUES (25, 'scan_d37780461b73caeb3d8a327f', 0, NULL, NULL, '2025-11-04 22:29:15', '122.96.14.142', '2025-11-04 22:24:15', '2025-11-04 22:24:15');
INSERT INTO `wechat_scan_login` VALUES (26, 'scan_31fe9b64a28fdcddce71d39b', 0, NULL, NULL, '2025-11-04 22:31:56', '122.96.14.142', '2025-11-04 22:26:57', '2025-11-04 22:26:57');
INSERT INTO `wechat_scan_login` VALUES (27, 'scan_e4388511b9dd7cacf2449cea', 3, NULL, NULL, '2025-11-04 22:36:22', '122.96.14.142', '2025-11-04 22:31:23', '2025-11-04 22:44:52');
INSERT INTO `wechat_scan_login` VALUES (28, 'scan_87daa0731f6008ddc7a5bceb', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-04 22:49:56', '122.96.14.142', '2025-11-04 22:44:56', '2025-11-04 22:45:07');
INSERT INTO `wechat_scan_login` VALUES (29, 'scan_1b2c180f52d502d6ea5e0787', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-06 20:16:16', '122.96.47.125', '2025-11-06 20:11:17', '2025-11-06 20:11:31');
INSERT INTO `wechat_scan_login` VALUES (30, 'scan_66d8e16698736c425b5d8879', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-06 20:17:18', '122.96.47.125', '2025-11-06 20:12:18', '2025-11-06 20:12:26');
INSERT INTO `wechat_scan_login` VALUES (31, 'scan_2cbda57152677fdbca19d8c4', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-06 20:19:12', '122.96.47.125', '2025-11-06 20:14:13', '2025-11-06 20:14:29');
INSERT INTO `wechat_scan_login` VALUES (32, 'scan_0a54fa986acf556bdbb2dc5e', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-06 20:21:39', '122.96.47.125', '2025-11-06 20:16:40', '2025-11-06 20:16:48');
INSERT INTO `wechat_scan_login` VALUES (33, 'scan_362b020107f87641e513c110', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 10:56:49', '122.96.47.125', '2025-11-07 10:51:49', '2025-11-07 10:52:03');
INSERT INTO `wechat_scan_login` VALUES (34, 'scan_a3c2fbede67c5802bcbe3703', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 10:58:23', '122.96.47.125', '2025-11-07 10:53:24', '2025-11-07 10:53:30');
INSERT INTO `wechat_scan_login` VALUES (35, 'scan_476c28ad6b487c97584320c8', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:00:47', '122.96.47.125', '2025-11-07 10:55:47', '2025-11-07 10:55:55');
INSERT INTO `wechat_scan_login` VALUES (36, 'scan_c7b5dd1bbad3e743211903aa', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:08:18', '122.96.47.125', '2025-11-07 11:03:19', '2025-11-07 11:03:27');
INSERT INTO `wechat_scan_login` VALUES (37, 'scan_263badedf83adf16e8137057', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:19:55', '122.96.47.125', '2025-11-07 11:14:55', '2025-11-07 11:15:03');
INSERT INTO `wechat_scan_login` VALUES (38, 'scan_319a733e6233b3bccaadf2de', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:20:37', '122.96.47.125', '2025-11-07 11:15:37', '2025-11-07 11:15:45');
INSERT INTO `wechat_scan_login` VALUES (39, 'scan_20be72f044314811147cdbf8', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:28:43', '122.96.47.125', '2025-11-07 11:23:44', '2025-11-07 11:23:50');
INSERT INTO `wechat_scan_login` VALUES (40, 'scan_2f751923d59058c7617de01a', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:36:12', NULL, '2025-11-07 11:31:13', '2025-11-07 11:31:21');
INSERT INTO `wechat_scan_login` VALUES (41, 'scan_bb3dc88c016a4fd0433fe4d9', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:37:34', NULL, '2025-11-07 11:32:35', '2025-11-07 11:32:43');
INSERT INTO `wechat_scan_login` VALUES (42, 'scan_53742bab6fceac91af7219b3', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:43:57', '122.96.47.125', '2025-11-07 11:38:58', '2025-11-07 11:39:06');
INSERT INTO `wechat_scan_login` VALUES (43, 'scan_5df37f7955ddae87a082dfd5', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-07 11:45:14', '122.96.47.125', '2025-11-07 11:40:15', '2025-11-07 11:40:23');
INSERT INTO `wechat_scan_login` VALUES (44, 'scan_ce5cb04959ee4b4fd16935f6', 0, NULL, NULL, '2025-11-07 11:45:42', '122.96.47.125', '2025-11-07 11:40:42', '2025-11-07 11:40:42');
INSERT INTO `wechat_scan_login` VALUES (45, 'scan_3432ddd5b09487d36cd897cc', 0, NULL, NULL, '2025-11-07 11:45:54', '122.96.47.125', '2025-11-07 11:40:54', '2025-11-07 11:40:54');
INSERT INTO `wechat_scan_login` VALUES (46, 'scan_cd11b9683f869023df59a426', 2, 'oPW1t2KC7YTW2ZlfuX2HrJ_qkAYw', NULL, '2025-11-07 11:49:01', '58.16.130.22', '2025-11-07 11:44:01', '2025-11-07 11:44:20');
INSERT INTO `wechat_scan_login` VALUES (47, 'scan_8a1fadc0946f682b05b410d6', 2, 'oPW1t2LK2ubjCwIeDdCMwSUHpbe8', NULL, '2025-11-07 11:49:24', NULL, '2025-11-07 11:44:24', '2025-11-07 11:44:44');
INSERT INTO `wechat_scan_login` VALUES (48, 'scan_f564ab770f25a4ed7a0411f4', 2, 'oPW1t2LpL2h1RRUPLTaVvZk__DF4', NULL, '2025-11-07 11:49:39', '116.21.134.33', '2025-11-07 11:44:39', '2025-11-07 11:45:00');
INSERT INTO `wechat_scan_login` VALUES (49, 'scan_55187b9f94e73261aba90d16', 0, NULL, NULL, '2025-11-07 11:51:31', '58.16.130.22', '2025-11-07 11:46:31', '2025-11-07 11:46:31');
INSERT INTO `wechat_scan_login` VALUES (50, 'scan_75b902a19355389fafe715d7', 0, NULL, NULL, '2025-11-07 11:51:40', '58.16.130.22', '2025-11-07 11:46:40', '2025-11-07 11:46:40');
INSERT INTO `wechat_scan_login` VALUES (51, 'scan_185aafe8fbd78f721e9f564c', 0, NULL, NULL, '2025-11-07 11:58:45', '122.96.47.125', '2025-11-07 11:53:45', '2025-11-07 11:53:45');
INSERT INTO `wechat_scan_login` VALUES (52, 'scan_3e9c7d7ebacba2f2837f3a82', 2, 'oPW1t2EQwBBvf1OTo8UXV6rQePXk', NULL, '2025-11-07 12:00:51', '20.222.140.205', '2025-11-07 11:55:52', '2025-11-07 11:56:32');
INSERT INTO `wechat_scan_login` VALUES (53, 'scan_5ca1b9db9b39f074674c68eb', 2, 'oPW1t2BGDQfPMX3KX8lTBvFh-2a8', NULL, '2025-11-07 13:05:56', '111.204.255.130', '2025-11-07 13:00:56', '2025-11-07 13:01:38');
INSERT INTO `wechat_scan_login` VALUES (54, 'scan_cc9d902602c369fa2940f9d7', 0, NULL, NULL, '2025-11-07 17:32:22', '46.232.56.242', '2025-11-07 17:27:22', '2025-11-07 17:27:22');
INSERT INTO `wechat_scan_login` VALUES (55, 'scan_841f25e53a119a26fcf25046', 0, NULL, NULL, '2025-11-10 09:52:19', '223.160.208.3', '2025-11-10 09:47:20', '2025-11-10 09:47:20');
INSERT INTO `wechat_scan_login` VALUES (56, 'scan_f2f69ba7e9288888ebe455bd', 0, NULL, NULL, '2025-11-10 09:53:35', '223.160.208.3', '2025-11-10 09:48:36', '2025-11-10 09:48:36');
INSERT INTO `wechat_scan_login` VALUES (57, 'scan_fbc8017991adce2cf8e0f2b4', 0, NULL, NULL, '2025-11-10 09:53:40', '223.160.208.3', '2025-11-10 09:48:40', '2025-11-10 09:48:40');
INSERT INTO `wechat_scan_login` VALUES (58, 'scan_7c14194d23cdb193cb5a9487', 0, NULL, NULL, '2025-11-10 09:53:42', '223.160.208.3', '2025-11-10 09:48:43', '2025-11-10 09:48:43');
INSERT INTO `wechat_scan_login` VALUES (59, 'scan_d7dc95b0c2ee8186220e4ba1', 0, NULL, NULL, '2025-11-10 09:53:51', NULL, '2025-11-10 09:48:52', '2025-11-10 09:48:52');
INSERT INTO `wechat_scan_login` VALUES (60, 'scan_3c24746bc405247d87d809dc', 0, NULL, NULL, '2025-11-10 09:53:56', '223.160.208.3', '2025-11-10 09:48:57', '2025-11-10 09:48:57');
INSERT INTO `wechat_scan_login` VALUES (61, 'scan_d849a789e02895d86e335796', 0, NULL, NULL, '2025-11-10 09:54:01', '223.160.208.3', '2025-11-10 09:49:01', '2025-11-10 09:49:01');
INSERT INTO `wechat_scan_login` VALUES (62, 'scan_29301f0e9618485f4e8f9eed', 0, NULL, NULL, '2025-11-10 09:54:04', '223.160.208.3', '2025-11-10 09:49:04', '2025-11-10 09:49:04');
INSERT INTO `wechat_scan_login` VALUES (63, 'scan_079285fa021f3dbf8f484b30', 0, NULL, NULL, '2025-11-10 09:54:08', '223.160.208.3', '2025-11-10 09:49:08', '2025-11-10 09:49:08');
INSERT INTO `wechat_scan_login` VALUES (64, 'scan_cdf1c55e46307ffe6d30bc0a', 0, NULL, NULL, '2025-11-10 09:54:13', '223.160.208.3', '2025-11-10 09:49:13', '2025-11-10 09:49:13');
INSERT INTO `wechat_scan_login` VALUES (65, 'scan_d5b9919e150477df28c9f65f', 0, NULL, NULL, '2025-11-10 09:54:17', '223.160.208.3', '2025-11-10 09:49:18', '2025-11-10 09:49:18');
INSERT INTO `wechat_scan_login` VALUES (66, 'scan_15ff5d1421961af01ae8bfa9', 0, NULL, NULL, '2025-11-10 09:54:20', '223.160.208.3', '2025-11-10 09:49:20', '2025-11-10 09:49:20');
INSERT INTO `wechat_scan_login` VALUES (67, 'scan_7f0694f358ba718ccdb108ff', 0, NULL, NULL, '2025-11-10 09:54:24', '223.160.208.3', '2025-11-10 09:49:25', '2025-11-10 09:49:25');
INSERT INTO `wechat_scan_login` VALUES (68, 'scan_d7afbb5b0bae4b0f81d35dea', 0, NULL, NULL, '2025-11-10 09:54:29', '223.160.208.3', '2025-11-10 09:49:30', '2025-11-10 09:49:30');
INSERT INTO `wechat_scan_login` VALUES (69, 'scan_9e1f02b628389ee1408a1ea9', 0, NULL, NULL, '2025-11-10 09:54:34', '223.160.208.3', '2025-11-10 09:49:34', '2025-11-10 09:49:34');
INSERT INTO `wechat_scan_login` VALUES (70, 'scan_22f85fc7006d7dcf2e50a974', 0, NULL, NULL, '2025-11-10 09:54:36', '223.160.208.3', '2025-11-10 09:49:37', '2025-11-10 09:49:37');
INSERT INTO `wechat_scan_login` VALUES (71, 'scan_fd6d545127b250955fee1818', 0, NULL, NULL, '2025-11-10 09:54:41', '223.160.208.3', '2025-11-10 09:49:41', '2025-11-10 09:49:41');
INSERT INTO `wechat_scan_login` VALUES (72, 'scan_8894c86299b1fede67d18c50', 0, NULL, NULL, '2025-11-10 09:54:44', '223.160.208.3', '2025-11-10 09:49:44', '2025-11-10 09:49:44');
INSERT INTO `wechat_scan_login` VALUES (73, 'scan_20655fad5203bda880a4628c', 0, NULL, NULL, '2025-11-10 09:54:48', '223.160.208.3', '2025-11-10 09:49:49', '2025-11-10 09:49:49');
INSERT INTO `wechat_scan_login` VALUES (74, 'scan_96f0282ef608b8681dec4f2b', 0, NULL, NULL, '2025-11-10 09:55:01', '223.160.208.3', '2025-11-10 09:50:02', '2025-11-10 09:50:02');
INSERT INTO `wechat_scan_login` VALUES (75, 'scan_23ffa91d611e7dc7ba910794', 0, NULL, NULL, '2025-11-10 09:55:06', '223.160.208.3', '2025-11-10 09:50:06', '2025-11-10 09:50:06');
INSERT INTO `wechat_scan_login` VALUES (76, 'scan_3b233907552bbdbd5091a4b3', 0, NULL, NULL, '2025-11-10 09:55:09', '223.160.208.3', '2025-11-10 09:50:09', '2025-11-10 09:50:09');
INSERT INTO `wechat_scan_login` VALUES (77, 'scan_78407bb8ce03b99e096c17d5', 0, NULL, NULL, '2025-11-10 09:55:15', NULL, '2025-11-10 09:50:16', '2025-11-10 09:50:16');
INSERT INTO `wechat_scan_login` VALUES (78, 'scan_855207daa3fe2627a5ec3238', 0, NULL, NULL, '2025-11-10 09:55:18', '223.160.208.3', '2025-11-10 09:50:18', '2025-11-10 09:50:18');
INSERT INTO `wechat_scan_login` VALUES (79, 'scan_a72e6d98977ec80976cf1cb7', 0, NULL, NULL, '2025-11-10 09:55:21', '223.160.208.3', '2025-11-10 09:50:21', '2025-11-10 09:50:21');
INSERT INTO `wechat_scan_login` VALUES (80, 'scan_1a6f76189b38a3ebde6dfc7d', 0, NULL, NULL, '2025-11-10 09:55:23', '223.160.208.3', '2025-11-10 09:50:23', '2025-11-10 09:50:23');
INSERT INTO `wechat_scan_login` VALUES (81, 'scan_2b562edc4bbb0511dfe8428b', 0, NULL, NULL, '2025-11-10 09:55:25', '223.160.208.3', '2025-11-10 09:50:26', '2025-11-10 09:50:26');
INSERT INTO `wechat_scan_login` VALUES (82, 'scan_c69fdff93b971ae5a77cb946', 0, NULL, NULL, '2025-11-10 09:55:28', '223.160.208.3', '2025-11-10 09:50:28', '2025-11-10 09:50:28');
INSERT INTO `wechat_scan_login` VALUES (83, 'scan_80a869a27c328e54ebb88444', 0, NULL, NULL, '2025-11-10 09:55:30', '223.160.208.3', '2025-11-10 09:50:31', '2025-11-10 09:50:31');
INSERT INTO `wechat_scan_login` VALUES (84, 'scan_5684c6e8eaab6961795fa7d0', 0, NULL, NULL, '2025-11-10 09:55:33', '223.160.208.3', '2025-11-10 09:50:33', '2025-11-10 09:50:33');
INSERT INTO `wechat_scan_login` VALUES (85, 'scan_05fd23e55f143fbfd8418679', 0, NULL, NULL, '2025-11-10 09:55:35', '223.160.208.3', '2025-11-10 09:50:36', '2025-11-10 09:50:36');
INSERT INTO `wechat_scan_login` VALUES (86, 'scan_26937a60648cc1ffd134d083', 0, NULL, NULL, '2025-11-10 09:55:38', '223.160.208.3', '2025-11-10 09:50:38', '2025-11-10 09:50:38');
INSERT INTO `wechat_scan_login` VALUES (87, 'scan_db0a725d0cd12643c29bb1f5', 0, NULL, NULL, '2025-11-10 09:55:40', '223.160.208.3', '2025-11-10 09:50:41', '2025-11-10 09:50:41');
INSERT INTO `wechat_scan_login` VALUES (88, 'scan_d1ec7f144a4dac1bb5547865', 0, NULL, NULL, '2025-11-10 09:55:43', '223.160.208.3', '2025-11-10 09:50:43', '2025-11-10 09:50:43');
INSERT INTO `wechat_scan_login` VALUES (89, 'scan_c541a2b09b25130115562661', 0, NULL, NULL, '2025-11-10 09:55:45', '223.160.208.3', '2025-11-10 09:50:46', '2025-11-10 09:50:46');
INSERT INTO `wechat_scan_login` VALUES (90, 'scan_ab256e688de559fd36ca4413', 0, NULL, NULL, '2025-11-10 09:55:48', '223.160.208.3', '2025-11-10 09:50:48', '2025-11-10 09:50:48');
INSERT INTO `wechat_scan_login` VALUES (91, 'scan_bab72b35061a3c210bbd8aae', 0, NULL, NULL, '2025-11-10 09:55:50', '223.160.208.3', '2025-11-10 09:50:51', '2025-11-10 09:50:51');
INSERT INTO `wechat_scan_login` VALUES (92, 'scan_06645b311669b07a543b534d', 0, NULL, NULL, '2025-11-10 09:55:53', '223.160.208.3', '2025-11-10 09:50:53', '2025-11-10 09:50:53');
INSERT INTO `wechat_scan_login` VALUES (93, 'scan_5925fb0267a017918f77fb3f', 0, NULL, NULL, '2025-11-10 09:56:02', '223.160.208.3', '2025-11-10 09:51:02', '2025-11-10 09:51:02');
INSERT INTO `wechat_scan_login` VALUES (94, 'scan_7936a6f77889768c88db7037', 0, NULL, NULL, '2025-11-10 09:56:18', '223.160.208.3', '2025-11-10 09:51:18', '2025-11-10 09:51:18');
INSERT INTO `wechat_scan_login` VALUES (95, 'scan_88847c9dea0c02cd5c8819e0', 0, NULL, NULL, '2025-11-10 09:56:18', '223.160.208.3', '2025-11-10 09:51:18', '2025-11-10 09:51:18');
INSERT INTO `wechat_scan_login` VALUES (96, 'scan_0937120e9dd3e4475bbbbb18', 0, NULL, NULL, '2025-11-10 09:56:19', '223.160.208.3', '2025-11-10 09:51:19', '2025-11-10 09:51:19');
INSERT INTO `wechat_scan_login` VALUES (97, 'scan_741c48b2d411834b5891ed37', 0, NULL, NULL, '2025-11-10 09:56:19', '223.160.208.3', '2025-11-10 09:51:20', '2025-11-10 09:51:20');
INSERT INTO `wechat_scan_login` VALUES (98, 'scan_0007c8f21910369d531a9fb3', 0, NULL, NULL, '2025-11-10 09:56:20', '223.160.208.3', '2025-11-10 09:51:20', '2025-11-10 09:51:20');
INSERT INTO `wechat_scan_login` VALUES (99, 'scan_f8a138c66acfca80b1e75678', 0, NULL, NULL, '2025-11-10 09:56:20', '223.160.208.3', '2025-11-10 09:51:20', '2025-11-10 09:51:20');
INSERT INTO `wechat_scan_login` VALUES (100, 'scan_7e03ecf1a218f6fb7858dd75', 0, NULL, NULL, '2025-11-10 09:56:21', '223.160.208.3', '2025-11-10 09:51:21', '2025-11-10 09:51:21');
INSERT INTO `wechat_scan_login` VALUES (101, 'scan_54d21fb00caebec00fb7c326', 0, NULL, NULL, '2025-11-10 09:56:21', '223.160.208.3', '2025-11-10 09:51:22', '2025-11-10 09:51:22');
INSERT INTO `wechat_scan_login` VALUES (102, 'scan_3fe50efe295eb79018bf21a5', 0, NULL, NULL, '2025-11-10 09:56:22', '223.160.208.3', '2025-11-10 09:51:22', '2025-11-10 09:51:22');
INSERT INTO `wechat_scan_login` VALUES (103, 'scan_f01f6cc31a9e70e0bd7597ce', 0, NULL, NULL, '2025-11-10 09:56:23', '223.160.208.3', '2025-11-10 09:51:23', '2025-11-10 09:51:23');
INSERT INTO `wechat_scan_login` VALUES (104, 'scan_2727269fa2ee580923905335', 0, NULL, NULL, '2025-11-10 09:56:23', '223.160.208.3', '2025-11-10 09:51:23', '2025-11-10 09:51:23');
INSERT INTO `wechat_scan_login` VALUES (105, 'scan_c0a874eb3fa18c809f9bac00', 0, NULL, NULL, '2025-11-10 09:56:23', '223.160.208.3', '2025-11-10 09:51:24', '2025-11-10 09:51:24');
INSERT INTO `wechat_scan_login` VALUES (106, 'scan_ef9b1647054993b0e01b6142', 0, NULL, NULL, '2025-11-10 09:56:24', '223.160.208.3', '2025-11-10 09:51:25', '2025-11-10 09:51:25');
INSERT INTO `wechat_scan_login` VALUES (107, 'scan_c42ab7d8909c7ca06cd70f00', 0, NULL, NULL, '2025-11-10 09:56:25', '223.160.208.3', '2025-11-10 09:51:25', '2025-11-10 09:51:25');
INSERT INTO `wechat_scan_login` VALUES (108, 'scan_f0e38024b075996e5b6243d4', 0, NULL, NULL, '2025-11-10 09:56:25', '223.160.208.3', '2025-11-10 09:51:26', '2025-11-10 09:51:26');
INSERT INTO `wechat_scan_login` VALUES (109, 'scan_4048cfb472912b03b052c4d5', 0, NULL, NULL, '2025-11-10 09:56:26', '223.160.208.3', '2025-11-10 09:51:26', '2025-11-10 09:51:26');
INSERT INTO `wechat_scan_login` VALUES (110, 'scan_eac469ed70f503f1b0749e20', 0, NULL, NULL, '2025-11-10 09:56:26', '223.160.208.3', '2025-11-10 09:51:27', '2025-11-10 09:51:27');
INSERT INTO `wechat_scan_login` VALUES (111, 'scan_766b041db56a9e1ca9383147', 0, NULL, NULL, '2025-11-10 09:56:27', '223.160.208.3', '2025-11-10 09:51:27', '2025-11-10 09:51:27');
INSERT INTO `wechat_scan_login` VALUES (112, 'scan_1420829c05f35f85f02597ae', 0, NULL, NULL, '2025-11-10 09:56:28', '223.160.208.3', '2025-11-10 09:51:28', '2025-11-10 09:51:28');
INSERT INTO `wechat_scan_login` VALUES (113, 'scan_bc54724976b9efacf3d19674', 0, NULL, NULL, '2025-11-10 09:56:28', '223.160.208.3', '2025-11-10 09:51:29', '2025-11-10 09:51:29');
INSERT INTO `wechat_scan_login` VALUES (114, 'scan_f1f9aef7efdd28bae1ed5947', 0, NULL, NULL, '2025-11-10 09:56:29', '223.160.208.3', '2025-11-10 09:51:29', '2025-11-10 09:51:29');
INSERT INTO `wechat_scan_login` VALUES (115, 'scan_ed7655a4991cb78a86419c3f', 0, NULL, NULL, '2025-11-10 09:56:29', '223.160.208.3', '2025-11-10 09:51:29', '2025-11-10 09:51:29');
INSERT INTO `wechat_scan_login` VALUES (116, 'scan_c4f0de733a92f667fb79aeab', 0, NULL, NULL, '2025-11-10 09:56:30', '223.160.208.3', '2025-11-10 09:51:30', '2025-11-10 09:51:30');
INSERT INTO `wechat_scan_login` VALUES (117, 'scan_cf344d12e5922ae3c801e0d2', 0, NULL, NULL, '2025-11-10 09:56:30', '223.160.208.3', '2025-11-10 09:51:31', '2025-11-10 09:51:31');
INSERT INTO `wechat_scan_login` VALUES (118, 'scan_4419177f09a9195463b4f0c1', 0, NULL, NULL, '2025-11-10 09:56:31', '223.160.208.3', '2025-11-10 09:51:31', '2025-11-10 09:51:31');
INSERT INTO `wechat_scan_login` VALUES (119, 'scan_96e3ba4962ed1f5b07fc0073', 0, NULL, NULL, '2025-11-10 09:56:32', '223.160.208.3', '2025-11-10 09:51:32', '2025-11-10 09:51:32');
INSERT INTO `wechat_scan_login` VALUES (120, 'scan_678ffdd3d4ed9b72c4d57f37', 0, NULL, NULL, '2025-11-10 09:56:32', '223.160.208.3', '2025-11-10 09:51:32', '2025-11-10 09:51:32');
INSERT INTO `wechat_scan_login` VALUES (121, 'scan_f74bb5fa2b6e770b422497b1', 0, NULL, NULL, '2025-11-10 09:56:32', '223.160.208.3', '2025-11-10 09:51:33', '2025-11-10 09:51:33');
INSERT INTO `wechat_scan_login` VALUES (122, 'scan_8cfd2e755f6e66c6fef019d3', 0, NULL, NULL, '2025-11-10 09:56:33', '223.160.208.3', '2025-11-10 09:51:34', '2025-11-10 09:51:34');
INSERT INTO `wechat_scan_login` VALUES (123, 'scan_481ba7f61af79585e44cdbd4', 0, NULL, NULL, '2025-11-10 09:56:34', '223.160.208.3', '2025-11-10 09:51:34', '2025-11-10 09:51:34');
INSERT INTO `wechat_scan_login` VALUES (124, 'scan_ca5b44455d60fa318f83a207', 0, NULL, NULL, '2025-11-10 09:56:34', '223.160.208.3', '2025-11-10 09:51:34', '2025-11-10 09:51:34');
INSERT INTO `wechat_scan_login` VALUES (125, 'scan_fa4f66644c478f37f81c78f4', 0, NULL, NULL, '2025-11-10 09:56:35', '223.160.208.3', '2025-11-10 09:51:35', '2025-11-10 09:51:35');
INSERT INTO `wechat_scan_login` VALUES (126, 'scan_c055ec8ffb40374978fc6612', 0, NULL, NULL, '2025-11-10 09:56:35', '223.160.208.3', '2025-11-10 09:51:36', '2025-11-10 09:51:36');
INSERT INTO `wechat_scan_login` VALUES (127, 'scan_22e42d6fddda4df616f0e926', 0, NULL, NULL, '2025-11-10 09:56:36', '223.160.208.3', '2025-11-10 09:51:36', '2025-11-10 09:51:36');
INSERT INTO `wechat_scan_login` VALUES (128, 'scan_8075acbcfd39a74033ee672d', 0, NULL, NULL, '2025-11-10 09:56:37', '223.160.208.3', '2025-11-10 09:51:37', '2025-11-10 09:51:37');
INSERT INTO `wechat_scan_login` VALUES (129, 'scan_edabeb37a6d1a9569ee8a2a4', 0, NULL, NULL, '2025-11-10 09:56:37', '223.160.208.3', '2025-11-10 09:51:37', '2025-11-10 09:51:37');
INSERT INTO `wechat_scan_login` VALUES (130, 'scan_d24ad466d387508b5a22d436', 0, NULL, NULL, '2025-11-10 09:56:37', '223.160.208.3', '2025-11-10 09:51:38', '2025-11-10 09:51:38');
INSERT INTO `wechat_scan_login` VALUES (131, 'scan_e660f33aa20fb61daca7ab0e', 0, NULL, NULL, '2025-11-10 09:56:38', '223.160.208.3', '2025-11-10 09:51:39', '2025-11-10 09:51:39');
INSERT INTO `wechat_scan_login` VALUES (132, 'scan_fd89f0fdcb394e5ec6490693', 0, NULL, NULL, '2025-11-10 09:56:39', '223.160.208.3', '2025-11-10 09:51:39', '2025-11-10 09:51:39');
INSERT INTO `wechat_scan_login` VALUES (133, 'scan_d8bc7dbad641da65b5329000', 0, NULL, NULL, '2025-11-10 09:56:39', '223.160.208.3', '2025-11-10 09:51:39', '2025-11-10 09:51:39');
INSERT INTO `wechat_scan_login` VALUES (134, 'scan_e318a20971be63e64cafdf74', 0, NULL, NULL, '2025-11-10 09:56:40', '223.160.208.3', '2025-11-10 09:51:40', '2025-11-10 09:51:40');
INSERT INTO `wechat_scan_login` VALUES (135, 'scan_dfdf6d227ebef8b0b77f69bc', 0, NULL, NULL, '2025-11-10 09:56:40', '223.160.208.3', '2025-11-10 09:51:41', '2025-11-10 09:51:41');
INSERT INTO `wechat_scan_login` VALUES (136, 'scan_dfc723e181f9a444654b2fc3', 0, NULL, NULL, '2025-11-10 09:56:41', '223.160.208.3', '2025-11-10 09:51:41', '2025-11-10 09:51:41');
INSERT INTO `wechat_scan_login` VALUES (137, 'scan_9cd6f389af61babb6f241952', 0, NULL, NULL, '2025-11-10 09:56:41', '223.160.208.3', '2025-11-10 09:51:42', '2025-11-10 09:51:42');
INSERT INTO `wechat_scan_login` VALUES (138, 'scan_9a20303f901a9329040df44e', 0, NULL, NULL, '2025-11-10 09:56:42', '223.160.208.3', '2025-11-10 09:51:42', '2025-11-10 09:51:42');
INSERT INTO `wechat_scan_login` VALUES (139, 'scan_c4169f21f92932f8e03232e8', 0, NULL, NULL, '2025-11-10 09:56:42', '223.160.208.3', '2025-11-10 09:51:42', '2025-11-10 09:51:42');
INSERT INTO `wechat_scan_login` VALUES (140, 'scan_d83cfeaf3652fb85272ad55a', 0, NULL, NULL, '2025-11-10 09:56:43', '223.160.208.3', '2025-11-10 09:51:43', '2025-11-10 09:51:43');
INSERT INTO `wechat_scan_login` VALUES (141, 'scan_e535dba26759a804a982ceb0', 0, NULL, NULL, '2025-11-10 09:56:43', '223.160.208.3', '2025-11-10 09:51:44', '2025-11-10 09:51:44');
INSERT INTO `wechat_scan_login` VALUES (142, 'scan_a476fa5d1f41635ef3528bd6', 0, NULL, NULL, '2025-11-10 09:56:44', '223.160.208.3', '2025-11-10 09:51:44', '2025-11-10 09:51:44');
INSERT INTO `wechat_scan_login` VALUES (143, 'scan_f278a7eb1984212eba6c728d', 0, NULL, NULL, '2025-11-10 09:56:45', '223.160.208.3', '2025-11-10 09:51:45', '2025-11-10 09:51:45');
INSERT INTO `wechat_scan_login` VALUES (144, 'scan_fcb064a198f3943dc036a3c9', 0, NULL, NULL, '2025-11-10 09:56:45', '223.160.208.3', '2025-11-10 09:51:45', '2025-11-10 09:51:45');
INSERT INTO `wechat_scan_login` VALUES (145, 'scan_612b6b3ecd5258be5cf50ee1', 0, NULL, NULL, '2025-11-10 09:56:46', '223.160.208.3', '2025-11-10 09:51:46', '2025-11-10 09:51:46');
INSERT INTO `wechat_scan_login` VALUES (146, 'scan_3aa2a8a428f2e7e47a2f6bbe', 0, NULL, NULL, '2025-11-10 09:56:46', '223.160.208.3', '2025-11-10 09:51:47', '2025-11-10 09:51:47');
INSERT INTO `wechat_scan_login` VALUES (147, 'scan_ac1fb58da2daba15337b3bd4', 0, NULL, NULL, '2025-11-10 09:56:47', '223.160.208.3', '2025-11-10 09:51:47', '2025-11-10 09:51:47');
INSERT INTO `wechat_scan_login` VALUES (148, 'scan_790958818f73eeb66c685e02', 0, NULL, NULL, '2025-11-10 09:56:47', '223.160.208.3', '2025-11-10 09:51:48', '2025-11-10 09:51:48');
INSERT INTO `wechat_scan_login` VALUES (149, 'scan_859daeba300cb4533c75f0d3', 0, NULL, NULL, '2025-11-10 09:56:48', '223.160.208.3', '2025-11-10 09:51:48', '2025-11-10 09:51:48');
INSERT INTO `wechat_scan_login` VALUES (150, 'scan_88d21198de7d9e06497168bd', 0, NULL, NULL, '2025-11-10 09:56:48', '223.160.208.3', '2025-11-10 09:51:49', '2025-11-10 09:51:49');
INSERT INTO `wechat_scan_login` VALUES (151, 'scan_0dc99e9282b4283016ab15f4', 0, NULL, NULL, '2025-11-10 09:56:49', '223.160.208.3', '2025-11-10 09:51:49', '2025-11-10 09:51:49');
INSERT INTO `wechat_scan_login` VALUES (152, 'scan_e64323e6f24c5bdc915d9a19', 0, NULL, NULL, '2025-11-10 09:56:50', '223.160.208.3', '2025-11-10 09:51:50', '2025-11-10 09:51:50');
INSERT INTO `wechat_scan_login` VALUES (153, 'scan_50387c1395b96ca17441dcbb', 0, NULL, NULL, '2025-11-10 09:56:50', '223.160.208.3', '2025-11-10 09:51:50', '2025-11-10 09:51:50');
INSERT INTO `wechat_scan_login` VALUES (154, 'scan_3ceb2b7976180390a885a673', 0, NULL, NULL, '2025-11-10 09:56:50', '223.160.208.3', '2025-11-10 09:51:51', '2025-11-10 09:51:51');
INSERT INTO `wechat_scan_login` VALUES (155, 'scan_efe3702aed1c764f4dea57d4', 0, NULL, NULL, '2025-11-10 09:56:51', '223.160.208.3', '2025-11-10 09:51:52', '2025-11-10 09:51:52');
INSERT INTO `wechat_scan_login` VALUES (156, 'scan_91c2c22d5b9ad96e00935a88', 0, NULL, NULL, '2025-11-10 09:56:52', '223.160.208.3', '2025-11-10 09:51:52', '2025-11-10 09:51:52');
INSERT INTO `wechat_scan_login` VALUES (157, 'scan_7e819301fa500030e43e4a1d', 0, NULL, NULL, '2025-11-10 09:56:52', '223.160.208.3', '2025-11-10 09:51:52', '2025-11-10 09:51:52');
INSERT INTO `wechat_scan_login` VALUES (158, 'scan_bef41bb8abedba848ae74ecd', 2, 'oPW1t2MsoyBhHKgNoG0kxvGPsJ_Q', NULL, '2025-11-10 10:03:18', '223.160.208.3', '2025-11-10 09:58:19', '2025-11-10 09:58:29');
INSERT INTO `wechat_scan_login` VALUES (159, 'scan_96ad399624ae7fcad64d5e0e', 0, NULL, NULL, '2025-11-14 23:14:22', '27.36.31.206', '2025-11-14 23:09:23', '2025-11-14 23:09:23');
INSERT INTO `wechat_scan_login` VALUES (160, 'scan_027d4217ecf2d670cfc2a1e7', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-15 21:21:50', '122.96.14.142', '2025-11-15 21:16:51', '2025-11-15 21:17:05');
INSERT INTO `wechat_scan_login` VALUES (161, 'scan_7c65aab318184d5b4aa12d7f', 0, NULL, NULL, '2025-11-22 12:15:27', '182.149.186.68', '2025-11-22 12:10:28', '2025-11-22 12:10:28');
INSERT INTO `wechat_scan_login` VALUES (162, 'scan_267ae0b354d9cca1aecdd811', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 21:56:21', '122.96.14.142', '2025-11-23 21:51:22', '2025-11-23 21:51:30');
INSERT INTO `wechat_scan_login` VALUES (163, 'scan_a452d8f9414909f0f6a17071', 0, NULL, NULL, '2025-11-23 21:57:19', NULL, '2025-11-23 21:52:20', '2025-11-23 21:52:20');
INSERT INTO `wechat_scan_login` VALUES (164, 'scan_98378e0ee0a59e0f3ed5056f', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 21:57:33', '122.96.14.142', '2025-11-23 21:52:34', '2025-11-23 21:52:40');
INSERT INTO `wechat_scan_login` VALUES (165, 'scan_5a737ca2eefccee3026f6eb3', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:09:17', '122.96.14.142', '2025-11-23 22:04:17', '2025-11-23 22:04:26');
INSERT INTO `wechat_scan_login` VALUES (166, 'scan_e40f0a14627bdade6db97700', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:11:49', '122.96.14.142', '2025-11-23 22:06:49', '2025-11-23 22:06:55');
INSERT INTO `wechat_scan_login` VALUES (167, 'scan_22e3add18f203f96de3352b8', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:13:22', '122.96.14.142', '2025-11-23 22:08:23', '2025-11-23 22:08:29');
INSERT INTO `wechat_scan_login` VALUES (168, 'scan_7f28a5331a947e02430d3594', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:14:38', '122.96.14.142', '2025-11-23 22:09:38', '2025-11-23 22:09:46');
INSERT INTO `wechat_scan_login` VALUES (169, 'scan_3eb1a56714f00d36ad820736', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:15:26', '122.96.14.142', '2025-11-23 22:10:27', '2025-11-23 22:10:35');
INSERT INTO `wechat_scan_login` VALUES (170, 'scan_791aa6a7639aa7f6e6463d0c', 1, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:23:11', '122.96.14.142', '2025-11-23 22:18:12', '2025-11-23 22:18:17');
INSERT INTO `wechat_scan_login` VALUES (171, 'scan_81702b47bd97c5aa99dd602c', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:26:39', '122.96.14.142', '2025-11-23 22:21:40', '2025-11-23 22:21:50');
INSERT INTO `wechat_scan_login` VALUES (172, 'scan_feceb126eaa54555e73b58b3', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:30:58', '122.96.14.142', '2025-11-23 22:25:59', '2025-11-23 22:26:05');
INSERT INTO `wechat_scan_login` VALUES (173, 'scan_ee86cb05f69bcf84e045f5f3', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:33:41', '122.96.14.142', '2025-11-23 22:28:41', '2025-11-23 22:28:49');
INSERT INTO `wechat_scan_login` VALUES (174, 'scan_dc2136dfa725676dcb154dd2', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:39:22', '122.96.14.142', '2025-11-23 22:34:23', '2025-11-23 22:34:29');
INSERT INTO `wechat_scan_login` VALUES (175, 'scan_71e8073fb1afa44b238b6429', 2, 'oPW1t2AjdvEd307OFhF7A3yhWv4k', NULL, '2025-11-23 22:41:10', '122.96.14.142', '2025-11-23 22:36:11', '2025-11-23 22:36:17');

SET FOREIGN_KEY_CHECKS = 1;
