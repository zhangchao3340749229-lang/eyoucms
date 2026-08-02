-- ----------------------------------------
-- EyouCms MySQL Data Transfer (Manga Theme)
-- Version: #v1.7.1 Manga
-- ----------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- -----------------------------
-- Table structure for `ey_arctype`
-- -----------------------------
DROP TABLE IF EXISTS `ey_arctype`;
CREATE TABLE `ey_arctype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `channeltype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目顶级模型ID',
  `current_channel` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目当前模型ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目上级ID',
  `topid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '顶级栏目ID',
  `typename` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `dirname` varchar(200) NOT NULL DEFAULT '' COMMENT '目录英文名',
  `dirpath` varchar(200) NOT NULL DEFAULT '' COMMENT '目录存放HTML路径',
  `diy_dirpath` varchar(200) NOT NULL DEFAULT '' COMMENT '列表静态文件存放规则',
  `rulelist` varchar(200) NOT NULL DEFAULT '' COMMENT '列表静态文件存放规则',
  `ruleview` varchar(200) NOT NULL DEFAULT '' COMMENT '文档静态文件存放规则',
  `englist_name` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目英文名',
  `grade` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '栏目等级',
  `typelink` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目链接',
  `litpic` varchar(250) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `templist` varchar(200) NOT NULL DEFAULT '' COMMENT '列表模板文件名',
  `tempview` varchar(200) NOT NULL DEFAULT '' COMMENT '文档模板文件名',
  `seo_title` varchar(200) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` text COMMENT 'SEO描述',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序号',
  `is_hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏：0=显示，1=隐藏',
  `is_part` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '栏目属性：0=内容栏目，1=外部链接',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除',
  `del_method` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除状态',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '启用(1=正常，0=屏蔽)',
  `is_release` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否应用于会员投稿',
  `weapp_code` varchar(50) NOT NULL DEFAULT '' COMMENT '插件栏目唯一标识',
  `lang` varchar(50) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `target` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '新窗口打开',
  `nofollow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '防抓取',
  `typearcrank` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `empty_logic` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '空内容逻辑',
  `page_limit` varchar(10) NOT NULL DEFAULT '' COMMENT '限制页面',
  `total_arc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目下文档数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='文档栏目表';

-- -----------------------------
-- Records of `ey_arctype`
-- -----------------------------
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('1','6','6','0','0','关于我们','guanyuwomen','/guanyuwomen','','','','','0','','','0','lists_single.htm','','关于我们 - 漫画网站介绍','关于我们,漫画网站','关于我们页面，介绍漫画网站的定位和团队信息。','1','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('2','1','1','0','0','最新更新','zuixingengxin','/zuixingengxin','','','','','0','','','0','lists_article.htm','view_article.htm','最新更新漫画 - 在线漫画阅读','最新更新,漫画更新,新番漫画','最新更新漫画频道，提供每日更新的漫画作品，包含热血、恋爱、校园、奇幻等题材的最新章节。','2','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('3','1','1','0','0','热门漫画','remenmanga','/remenmanga','','','','','0','','','0','lists_article.htm','view_article.htm','热门漫画 - 高人气漫画推荐','热门漫画,人气漫画,经典漫画','热门漫画频道，精选高人气漫画作品，提供读者最受欢迎的漫画在线阅读。','3','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('4','1','1','0','0','漫画分类','manhuafenlei','/manhuafenlei','','','','','0','','','0','lists_article.htm','view_article.htm','漫画分类 - 按题材浏览漫画','漫画分类,热血漫画,恋爱漫画,校园漫画,奇幻漫画','漫画分类频道，按热血、恋爱、校园、奇幻、冒险、悬疑、搞笑、古风等题材分类浏览漫画作品。','4','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('5','1','1','0','0','完结漫画','wanjiemanhua','/wanjiemanhua','','','','','0','','','0','lists_article.htm','view_article.htm','完结漫画 - 已完结漫画全集','完结漫画,全集漫画,已完结','完结漫画频道，提供已完结的漫画全集在线阅读，包含热血、恋爱、奇幻等多种题材的完整作品。','5','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('6','1','1','0','0','漫画资讯','manhuazixun','/manhuazixun','','','','','0','','','0','lists_article.htm','view_article.htm','漫画资讯 - 漫画行业新闻动态','漫画资讯,动漫新闻,漫画动态','漫画资讯频道，提供漫画行业新闻、动漫动态、新作推荐等资讯内容。','6','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('7','6','6','0','0','联系我们','lianxiwomen','/lianxiwomen','','','','','0','','','0','lists_single.htm','','联系我们 - 漫画网站联系方式','联系我们,联系方式','联系我们页面，提供漫画网站的联系方式和反馈渠道。','7','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('10','1','1','4','4','热血漫画','rexuemanhua','/manhuafenlei/rexuemanhua','','','','','1','','','0','lists_article.htm','view_article.htm','热血漫画 - 少年热血漫画在线阅读','热血漫画,少年漫画,战斗漫画','热血漫画频道提供精彩的少年热血题材漫画，包含战斗、友情、成长等主题的原创漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('11','1','1','4','4','恋爱漫画','lianaimanhu','/manhuafenlei/lianaimanhu','','','','','1','','','0','lists_article.htm','view_article.htm','恋爱漫画 - 甜蜜恋爱漫画推荐','恋爱漫画,少女漫画,爱情漫画','恋爱漫画频道提供甜蜜浪漫的恋爱题材漫画，包含校园恋爱、都市爱情等主题的漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('12','1','1','4','4','校园漫画','xiaoyuanmanh','/manhuafenlei/xiaoyuanmanh','','','','','1','','','0','lists_article.htm','view_article.htm','校园漫画 - 青春校园漫画在线看','校园漫画,青春漫画,学校漫画','校园漫画频道提供青春校园题材漫画，包含学生生活、友情故事等主题的漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('13','1','1','4','4','奇幻漫画','qihuanmanhu','/manhuafenlei/qihuanmanhu','','','','','1','','','0','lists_article.htm','view_article.htm','奇幻漫画 - 奇幻冒险漫画阅读','奇幻漫画,魔法漫画,异世界漫画','奇幻漫画频道提供奇幻冒险题材漫画，包含魔法、异世界、神话等主题的漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('14','1','1','4','4','冒险漫画','maoxianmanh','/manhuafenlei/maoxianmanh','','','','','1','','','0','lists_article.htm','view_article.htm','冒险漫画 - 探险冒险漫画在线阅读','冒险漫画,探险漫画,旅程漫画','冒险漫画频道提供探险冒险题材漫画，包含旅途、探索、发现等主题的漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('15','1','1','4','4','悬疑漫画','xuanyimanhu','/manhuafenlei/xuanyimanhu','','','','','1','','','0','lists_article.htm','view_article.htm','悬疑漫画 - 推理悬疑漫画推荐','悬疑漫画,推理漫画,惊悚漫画','悬疑漫画频道提供推理悬疑题材漫画，包含侦探、谜题、惊悚等主题的漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('16','1','1','4','4','搞笑漫画','gaoxiaomanh','/manhuafenlei/gaoxiaomanh','','','','','1','','','0','lists_article.htm','view_article.htm','搞笑漫画 - 搞笑日常漫画在线看','搞笑漫画,日常漫画,喜剧漫画','搞笑漫画频道提供轻松搞笑题材漫画，包含日常、喜剧、吐槽等主题的漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');
INSERT INTO `ey_arctype` (`id`,`channeltype`,`current_channel`,`parent_id`,`topid`,`typename`,`dirname`,`dirpath`,`diy_dirpath`,`rulelist`,`ruleview`,`englist_name`,`grade`,`typelink`,`litpic`,`templist`,`tempview`,`seo_title`,`seo_keywords`,`seo_description`,`sort_order`,`is_hidden`,`is_part`,`admin_id`,`is_del`,`del_method`,`status`,`is_release`,`weapp_code`,`lang`,`add_time`,`update_time`,`target`,`nofollow`,`typearcrank`,`empty_logic`,`page_limit`,`total_arc`) VALUES ('17','1','1','4','4','古风漫画','gufengmanh','/manhuafenlei/gufengmanh','','','','','1','','','0','lists_article.htm','view_article.htm','古风漫画 - 古代古风漫画阅读','古风漫画,古代漫画,国风漫画','古风漫画频道提供古代古风题材漫画，包含宫廷、江湖、仙侠等主题的漫画作品在线阅读。','100','0','0','1','0','0','1','0','','cn','1700000000','1700000000','0','0','0','0','','0');

-- -----------------------------
-- Table structure for `ey_archives`
-- -----------------------------
DROP TABLE IF EXISTS `ey_archives`;
CREATE TABLE `ey_archives` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `typeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当前栏目',
  `stypeid` varchar(90) NOT NULL DEFAULT '' COMMENT '副栏目ID集合',
  `channel` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '模型ID',
  `is_b` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '加粗',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '文档标题',
  `subtitle` varchar(200) NOT NULL DEFAULT '' COMMENT '副标题',
  `litpic` varchar(250) NOT NULL DEFAULT '' COMMENT '封面图片',
  `is_head` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '头条',
  `is_special` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '特荐',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `is_recom` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_jump` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '跳转链接',
  `is_litpic` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '图片',
  `is_roll` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '滚动',
  `is_slide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '幻灯',
  `is_diyattr` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '自定义',
  `origin` varchar(200) NOT NULL DEFAULT '' COMMENT '来源',
  `author` varchar(200) NOT NULL DEFAULT '' COMMENT '作者',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `arcrank` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `jumplinks` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转网址',
  `ismake` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否静态页面',
  `seo_title` varchar(200) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `seo_description` text COMMENT 'SEO描述',
  `attrlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '参数列表ID',
  `merchant_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '多商家ID',
  `free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '商品是否包邮',
  `users_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '会员价',
  `crossed_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品划线价',
  `users_discount_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品会员折扣类型',
  `users_free` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否会员免费',
  `old_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品旧价',
  `sales_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总销售量',
  `virtual_sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品虚拟销售量',
  `sales_all` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '虚拟总销量',
  `stock_count` int(10) NOT NULL DEFAULT '0' COMMENT '商品库存量',
  `stock_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '库存是否显示',
  `prom_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品类型',
  `logistics_type` varchar(100) NOT NULL DEFAULT '' COMMENT '商品物流支持类型',
  `tempview` varchar(200) NOT NULL DEFAULT '' COMMENT '文档模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0=屏蔽，1=正常)',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序号',
  `lang` varchar(50) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `arc_level_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档会员权限ID',
  `restric_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '限制模式',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除',
  `del_method` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除状态',
  `joinaid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联文档ID',
  `downcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `appraise` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `collection` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `htmlfilename` varchar(500) NOT NULL DEFAULT '' COMMENT '自定义文件名',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '省份',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所在城市',
  `area_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所在区域',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `no_vip_pay` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '非会员可付费使用',
  `editor_remote_img_local` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '远程图片本地化',
  `editor_img_clear_link` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '清除非本站链接',
  `reason` text COMMENT '退回原因',
  `stock_code` varchar(100) NOT NULL DEFAULT '' COMMENT '商品编码',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`),
  KEY `channel` (`channel`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='文档主表';

-- -----------------------------
-- Records of `ey_archives`
-- -----------------------------
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('1','10','','1','0','星海纪元','','/template/pc/skin/images/manga/cover-1.jpg','1','0','0','1','0','1','0','0','0','原创','原创作者','320','0','','0','星海纪元 - 热血漫画','星海纪元,热血漫画,原创漫画','在浩瀚星海中，少年踏上守护家园的征途，与伙伴们一起对抗星际帝国的压迫，书写属于自己的热血传奇。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000100','1700100100','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('2','10','','1','0','月下剑影','','/template/pc/skin/images/manga/cover-2.jpg','1','0','0','0','0','1','0','0','0','原创','墨白','156','0','','0','月下剑影 - 热血漫画','月下剑影,热血漫画,剑客漫画','月光下的剑客，以一己之力挑战江湖群雄，在刀光剑影中寻找属于自己的道路和正义。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000200','1700100200','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('3','11','','1','0','夏日心动','','/template/pc/skin/images/manga/cover-3.jpg','1','0','0','1','0','1','0','0','0','原创','小鹿','890','0','','0','夏日心动 - 恋爱漫画','夏日心动,恋爱漫画,校园恋爱','那个夏天，转学生出现在教室门口，一段青涩甜蜜的校园恋爱故事就此展开。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000300','1700100300','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('4','12','','1','0','苍穹旅团','','/template/pc/skin/images/manga/cover-4.jpg','1','0','0','0','0','1','0','0','0','原创','青空','234','0','','0','苍穹旅团 - 校园漫画','苍穹旅团,校园漫画,社团漫画','一群热爱天空的少年组成了苍穹旅团，在校园里追逐飞行梦想的青春故事。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000400','1700100400','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('5','13','','1','0','灵境档案','','/template/pc/skin/images/manga/cover-5.jpg','1','0','0','1','0','1','0','0','0','原创','雾隐','567','0','','0','灵境档案 - 奇幻漫画','灵境档案,奇幻漫画,灵异漫画','神秘的灵境世界中，调查员记录着每一个超自然事件，揭开隐藏在现实背后的奇幻真相。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000500','1700100500','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('6','13','','1','0','异界来信','','/template/pc/skin/images/manga/cover-6.jpg','1','0','0','0','0','1','0','0','0','原创','星河','123','0','','0','异界来信 - 奇幻漫画','异界来信,奇幻漫画,异世界漫画','一封来自异世界的信件，打开了连接两个世界的大门，平凡的少年开始了奇幻冒险。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000600','1700100600','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('7','14','','1','0','时间收藏家','','/template/pc/skin/images/manga/cover-7.jpg','1','0','0','1','0','1','0','0','0','原创','时雨','445','0','','0','时间收藏家 - 冒险漫画','时间收藏家,冒险漫画,时间旅行','收藏时间碎片的旅人，在不同时代之间穿梭冒险，收集散落在历史长河中的珍贵瞬间。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000700','1700100700','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('8','14','','1','0','云海彼端','','/template/pc/skin/images/manga/cover-8.jpg','1','0','0','0','0','1','0','0','0','原创','风间','678','0','','0','云海彼端 - 冒险漫画','云海彼端,冒险漫画,探索漫画','穿越云海的冒险旅程，少年在未知的大陆上探索古老文明和失落的宝藏。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000800','1700100800','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('9','15','','1','0','雾城回响','','/template/pc/skin/images/manga/cover-9.jpg','1','0','0','1','0','1','0','0','0','原创','夜行者','901','0','','0','雾城回响 - 悬疑漫画','雾城回响,悬疑漫画,推理漫画','永远笼罩在雾中的城市里，一连串离奇事件接连发生，侦探在迷雾中追寻真相。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700000900','1700100900','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('10','15','','1','0','绯月交响曲','','/template/pc/skin/images/manga/cover-10.jpg','1','0','0','0','0','1','0','0','0','原创','月华','234','0','','0','绯月交响曲 - 悬疑漫画','绯月交响曲,悬疑漫画,音乐漫画','绯红月光下的交响曲隐藏着惊天秘密，音乐学院的少女卷入了一场跨越百年的悬疑事件。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700001000','1700101000','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('11','16','','1','0','星轨物语','','/template/pc/skin/images/manga/cover-11.jpg','1','0','0','0','0','1','0','0','0','原创','乐天派','345','0','','0','星轨物语 - 搞笑漫画','星轨物语,搞笑漫画,日常漫画','围绕星座展开的搞笑日常故事，几个性格迥异的朋友之间发生的欢乐趣事。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700001100','1700101100','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('12','16','','1','0','幻夜绘卷','','/template/pc/skin/images/manga/cover-12.jpg','1','0','0','0','0','1','0','0','0','原创','画师甲','456','0','','0','幻夜绘卷 - 搞笑漫画','幻夜绘卷,搞笑漫画,创意漫画','画师笔下的角色们活过来了，在夜晚的画室里上演一出出令人捧腹的搞笑短剧。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700001200','1700101200','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('13','17','','1','0','苍蓝星纹','','/template/pc/skin/images/manga/cover-13.jpg','1','0','0','1','0','1','0','0','0','原创','青衣','789','0','','0','苍蓝星纹 - 古风漫画','苍蓝星纹,古风漫画,宫廷漫画','身负苍蓝星纹印记的少年，在古代王朝的权力漩涡中寻找自己的命运和使命。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700001300','1700101300','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('14','17','','1','0','时之碎片','','/template/pc/skin/images/manga/cover-14.jpg','1','0','0','0','0','1','0','0','0','原创','流年','123','0','','0','时之碎片 - 古风漫画','时之碎片,古风漫画,仙侠漫画','散落在时间长河中的碎片，连接着前世今生的缘分，一段跨越千年的古风仙侠故事。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700001400','1700101400','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('15','11','','1','0','星尘骑士','','/template/pc/skin/images/manga/cover-15.jpg','1','0','0','0','0','1','0','0','0','原创','银河','567','0','','0','星尘骑士 - 恋爱漫画','星尘骑士,恋爱漫画,奇幻恋爱','星尘化身的骑士守护着公主，在魔法与爱情交织的世界里展开一段浪漫冒险。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700001500','1700101500','0','1','1','','');
INSERT INTO `ey_archives` (`aid`,`typeid`,`stypeid`,`channel`,`is_b`,`title`,`subtitle`,`litpic`,`is_head`,`is_special`,`is_top`,`is_recom`,`is_jump`,`is_litpic`,`is_roll`,`is_slide`,`is_diyattr`,`origin`,`author`,`click`,`arcrank`,`jumplinks`,`ismake`,`seo_title`,`seo_keywords`,`seo_description`,`attrlist_id`,`merchant_id`,`free_shipping`,`users_price`,`crossed_price`,`users_discount_type`,`users_free`,`old_price`,`sales_num`,`virtual_sales`,`sales_all`,`stock_count`,`stock_show`,`prom_type`,`logistics_type`,`tempview`,`status`,`sort_order`,`lang`,`admin_id`,`users_id`,`arc_level_id`,`restric_type`,`is_del`,`del_method`,`joinaid`,`downcount`,`appraise`,`collection`,`htmlfilename`,`province_id`,`city_id`,`area_id`,`add_time`,`update_time`,`no_vip_pay`,`editor_remote_img_local`,`editor_img_clear_link`,`reason`,`stock_code`) VALUES ('16','12','','1','0','梦境守护者','','/template/pc/skin/images/manga/cover-16.jpg','1','0','0','0','0','1','0','0','0','原创','幻夜','890','0','','0','梦境守护者 - 校园漫画','梦境守护者,校园漫画,奇幻校园','能够进入他人梦境的少年，在校园里默默守护着同学们的梦境不被噩梦侵蚀。','0','0','0','0.00','0.00','0','0','0.00','0','0','0','99999','1','0','','','1','100','cn','1','0','0','0','0','0','0','0','0','0','','0','0','0','1700001600','1700101600','0','1','1','','');

-- -----------------------------
-- Table structure for `ey_article_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_article_content`;
CREATE TABLE `ey_article_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext,
  `content_ey_m` longtext,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='文章附加表';

-- -----------------------------
-- Records of `ey_article_content`
-- -----------------------------
INSERT INTO `ey_article_content` VALUES ('1', '1', '<p>在浩瀚星海中，少年踏上守护家园的征途，与伙伴们一起对抗星际帝国的压迫，书写属于自己的热血传奇。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('2', '2', '<p>月光下的剑客，以一己之力挑战江湖群雄，在刀光剑影中寻找属于自己的道路和正义。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('3', '3', '<p>那个夏天，转学生出现在教室门口，一段青涩甜蜜的校园恋爱故事就此展开。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('4', '4', '<p>一群热爱天空的少年组成了苍穹旅团，在校园里追逐飞行梦想的青春故事。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('5', '5', '<p>神秘的灵境世界中，调查员记录着每一个超自然事件，揭开隐藏在现实背后的奇幻真相。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('6', '6', '<p>一封来自异世界的信件，打开了连接两个世界的大门，平凡的少年开始了奇幻冒险。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('7', '7', '<p>收藏时间碎片的旅人，在不同时代之间穿梭冒险，收集散落在历史长河中的珍贵瞬间。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('8', '8', '<p>穿越云海的冒险旅程，少年在未知的大陆上探索古老文明和失落的宝藏。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('9', '9', '<p>永远笼罩在雾中的城市里，一连串离奇事件接连发生，侦探在迷雾中追寻真相。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('10', '10', '<p>绯红月光下的交响曲隐藏着惊天秘密，音乐学院的少女卷入了一场跨越百年的悬疑事件。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('11', '11', '<p>围绕星座展开的搞笑日常故事，几个性格迥异的朋友之间发生的欢乐趣事。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('12', '12', '<p>画师笔下的角色们活过来了，在夜晚的画室里上演一出出令人捧腹的搞笑短剧。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('13', '13', '<p>身负苍蓝星纹印记的少年，在古代王朝的权力漩涡中寻找自己的命运和使命。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('14', '14', '<p>散落在时间长河中的碎片，连接着前世今生的缘分，一段跨越千年的古风仙侠故事。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('15', '15', '<p>星尘化身的骑士守护着公主，在魔法与爱情交织的世界里展开一段浪漫冒险。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');
INSERT INTO `ey_article_content` VALUES ('16', '16', '<p>能够进入他人梦境的少年，在校园里默默守护着同学们的梦境不被噩梦侵蚀。</p><p>这部作品以精美的画风和引人入胜的剧情著称，角色塑造鲜明，世界观独特。读者可以跟随主角一起经历成长与冒险，感受友情、勇气和梦想的力量。</p><p>更新时间固定，欢迎收藏本页面随时关注最新章节。如果你喜欢这部作品，也可以浏览同分类下的其他精彩漫画。</p>', '', '1700000000', '1700000000');

-- -----------------------------
-- Table structure for `ey_links`
-- -----------------------------
DROP TABLE IF EXISTS `ey_links`;
CREATE TABLE `ey_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1=文字链接，2=图片链接',
  `groupid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分组id',
  `title` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `target` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nofollow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `intro` text,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0',
  `area_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT 'cn',
  `delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- -----------------------------
-- Records of `ey_links`
-- -----------------------------
INSERT INTO `ey_links` VALUES ('1','1','1','漫画联盟','https://example.com','','1','0','0','','','','1','0','0','0','','cn','0','1700000000','1700000000');
INSERT INTO `ey_links` VALUES ('2','1','1','动漫之家','https://example.com','','2','0','0','','','','1','0','0','0','','cn','0','1700000000','1700000000');
INSERT INTO `ey_links` VALUES ('3','1','1','二次元世界','https://example.com','','3','0','0','','','','1','0','0','0','','cn','0','1700000000','1700000000');

-- -----------------------------
-- Table structure for `ey_ad_position`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ad_position`;
CREATE TABLE `ey_ad_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intro` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(50) NOT NULL DEFAULT 'cn',
  `admin_id` int(10) NOT NULL DEFAULT '0',
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='广告位置表';

INSERT INTO `ey_ad_position` VALUES ('1', '首页-幻灯片', '1', '1920', '550', '首页大幻灯片广告位', '1', 'cn', '0', '0', '1700000000', '1700000000');
INSERT INTO `ey_ad_position` VALUES ('3', '手机端首页幻灯', '1', '0', '0', '', '1', 'cn', '0', '0', '1700000000', '1700000000');

-- -----------------------------
-- Table structure for `ey_ad`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ad`;
CREATE TABLE `ey_ad` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(1) DEFAULT '0',
  `title` varchar(60) DEFAULT '',
  `links` varchar(255) DEFAULT '',
  `litpic` varchar(255) DEFAULT '',
  `start_time` int(11) DEFAULT '0',
  `end_time` int(11) DEFAULT '0',
  `intro` text,
  `link_man` varchar(60) DEFAULT '',
  `link_email` varchar(60) DEFAULT '',
  `link_phone` varchar(60) DEFAULT '',
  `click` int(11) DEFAULT '0',
  `bgcolor` varchar(30) DEFAULT '',
  `status` tinyint(1) unsigned DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `target` varchar(50) DEFAULT '',
  `admin_id` int(10) DEFAULT '0',
  `is_del` tinyint(1) DEFAULT '0',
  `lang` varchar(50) DEFAULT 'cn',
  `add_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告表';

-- -----------------------------
-- Table structure for `ey_tagindex`
-- -----------------------------
DROP TABLE IF EXISTS `ey_tagindex`;
CREATE TABLE `ey_tagindex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `litpic` varchar(250) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `seo_keywords` varchar(200) NOT NULL DEFAULT '',
  `seo_description` text,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `weekcc` int(10) unsigned NOT NULL DEFAULT '0',
  `monthcc` int(10) unsigned NOT NULL DEFAULT '0',
  `weekup` int(10) unsigned NOT NULL DEFAULT '0',
  `monthup` int(10) unsigned NOT NULL DEFAULT '0',
  `is_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT 'cn',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='标签索引表';

-- -----------------------------
-- Records of `ey_tagindex`
-- -----------------------------
INSERT INTO `ey_tagindex` VALUES ('1', '热血', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_tagindex` VALUES ('2', '恋爱', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_tagindex` VALUES ('3', '校园', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_tagindex` VALUES ('4', '奇幻', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_tagindex` VALUES ('5', '冒险', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_tagindex` VALUES ('6', '悬疑', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_tagindex` VALUES ('7', '搞笑', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_tagindex` VALUES ('8', '古风', '0', '', '', '', '', '0', '2', '0', '0', '0', '0', '0', '0', 'cn', '1700000000', '1700000000');

-- -----------------------------
-- Table structure for `ey_taglist`
-- -----------------------------
DROP TABLE IF EXISTS `ey_taglist`;
CREATE TABLE `ey_taglist` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  `arcrank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT 'cn',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章标签表';

-- -----------------------------
-- Records of `ey_taglist`
-- -----------------------------
INSERT INTO `ey_taglist` VALUES ('1', '1', '10', '热血', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('1', '2', '10', '热血', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('2', '3', '11', '恋爱', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('2', '4', '11', '恋爱', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('3', '5', '12', '校园', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('3', '6', '12', '校园', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('4', '7', '13', '奇幻', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('4', '8', '13', '奇幻', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('5', '9', '14', '冒险', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('5', '10', '14', '冒险', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('6', '11', '15', '悬疑', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('6', '12', '15', '悬疑', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('7', '13', '16', '搞笑', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('7', '14', '16', '搞笑', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('8', '15', '17', '古风', '0', 'cn', '1700000000', '1700000000');
INSERT INTO `ey_taglist` VALUES ('8', '16', '17', '古风', '0', 'cn', '1700000000', '1700000000');

-- -----------------------------
-- Table structure for `ey_search_word`
-- -----------------------------
DROP TABLE IF EXISTS `ey_search_word`;
CREATE TABLE `ey_search_word` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL DEFAULT '',
  `searchNum` int(10) unsigned NOT NULL DEFAULT '0',
  `resultNum` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `users_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(30) NOT NULL DEFAULT 'cn',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索词统计表';

-- -----------------------------
-- Table structure for `ey_images_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_images_content`;
CREATE TABLE `ey_images_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext,
  `content_ey_m` longtext,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图集附加表';

SET FOREIGN_KEY_CHECKS = 1;
