#!/usr/bin/env python3
"""Generate a manga-themed EyouCMS SQL file from the original."""

import re

SRC = "/tmp/cc-agent/69516028/project/install/eyoucms.sql"
DST = "/tmp/cc-agent/69516028/project/install/eyoucms_manga.sql"

with open(SRC, "r", encoding="utf-8") as f:
    lines = f.readlines()

CLEAR_TABLES = {"ey_ad", "ey_search_word", "ey_admin_log", "ey_images_content"}
REPLACE_TABLES = {"ey_arctype", "ey_archives", "ey_article_content", "ey_links",
                  "ey_ad_position", "ey_tagindex", "ey_taglist"}

new_inserts = {}

def sq(v):
    if isinstance(v, str):
        return "'" + v.replace("\\", "\\\\").replace("'", "\\'") + "'"
    return "'" + str(v) + "'"

def make_insert(table, row):
    return "INSERT INTO `" + table + "` VALUES (" + ", ".join(sq(v) for v in row) + ");"

# ---- ey_arctype ---- (38 columns)
arctypes = [
    (1, 6, 6, 0, 0, "关于我们", "guanyuwomen", "/guanyuwomen", "", "", "", "", 0, "", "", "lists_single.htm", "", "关于我们 - 在线漫画阅读平台", "关于我们,漫画平台,在线阅读", "关于我们频道介绍漫画平台的创立故事、团队介绍及发展历程，致力于为读者提供优质的在线漫画阅读体验。", 1, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (2, 1, 1, 0, 0, "最新更新", "zuixingengxin", "/zuixingengxin", "", "", "", "", 0, "", "", "lists_article.htm", "view_article.htm", "最新更新 - 在线漫画阅读", "最新更新,新番漫画,漫画更新", "最新更新频道提供最新连载漫画的更新动态，第一时间获取热门漫画的最新章节在线阅读。", 2, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (3, 1, 1, 0, 0, "热门漫画", "remenmanga", "/remenmanga", "", "", "", "", 0, "", "", "lists_article.htm", "view_article.htm", "热门漫画 - 在线漫画阅读", "热门漫画,人气漫画,经典漫画", "热门漫画频道汇集当下最受欢迎的高人气漫画作品，涵盖各类题材的精选漫画在线阅读。", 3, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (4, 1, 1, 0, 0, "漫画分类", "manhuafenlei", "/manhuafenlei", "", "", "", "", 0, "", "", "lists_article.htm", "view_article.htm", "漫画分类 - 在线漫画阅读", "漫画分类,漫画类型,题材分类", "漫画分类频道按照题材类型对漫画进行分类整理，方便读者快速找到喜欢的漫画类型在线阅读。", 4, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (5, 1, 1, 0, 0, "完结漫画", "wanjiemanhua", "/wanjiemanhua", "", "", "", "", 0, "", "", "lists_article.htm", "view_article.htm", "完结漫画 - 在线漫画阅读", "完结漫画,已完结,全本漫画", "完结漫画频道收录已完结的全本漫画作品，提供完整的漫画故事在线阅读体验，不再追更等待。", 5, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (6, 1, 1, 0, 0, "漫画资讯", "manhuazixun", "/manhuazixun", "", "", "", "", 0, "", "", "lists_article.htm", "view_article.htm", "漫画资讯 - 在线漫画阅读", "漫画资讯,动漫新闻,行业动态", "漫画资讯频道提供最新的漫画行业动态、动漫新闻、新作推荐等资讯内容，了解漫画圈的最新消息。", 6, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (7, 6, 6, 0, 0, "联系我们", "lianxiwomen", "/lianxiwomen", "", "", "", "", 0, "", "", "lists_single.htm", "", "联系我们 - 在线漫画阅读平台", "联系我们,联系方式,意见反馈", "联系我们频道提供漫画平台的联系方式和意见反馈渠道，欢迎读者与我们沟通交流。", 7, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (10, 1, 1, 4, 4, "热血漫画", "rexuemanhua", "/manhuafenlei/rexuemanhua", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "热血漫画 - 在线漫画阅读", "热血漫画,少年漫画,战斗漫画", "热血漫画频道提供精彩的少年热血题材漫画，包含战斗、友情、成长等主题的原创漫画作品在线阅读。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (11, 1, 1, 4, 4, "恋爱漫画", "lianaimanhu", "/manhuafenlei/lianaimanhu", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "恋爱漫画 - 在线漫画阅读", "恋爱漫画,少女漫画,浪漫漫画", "恋爱漫画频道精选甜蜜浪漫的恋爱题材漫画，讲述动人的爱情故事，感受心跳加速的浪漫瞬间。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (12, 1, 1, 4, 4, "校园漫画", "xiaoyuanmanh", "/manhuafenlei/xiaoyuanmanh", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "校园漫画 - 在线漫画阅读", "校园漫画,青春漫画,学校生活", "校园漫画频道呈现充满青春活力的校园题材漫画，记录校园生活中的友情、成长与梦想故事。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (13, 1, 1, 4, 4, "奇幻漫画", "qihuanmanhu", "/manhuafenlei/qihuanmanhu", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "奇幻漫画 - 在线漫画阅读", "奇幻漫画,异世界,魔法漫画", "奇幻漫画频道带你进入充满魔法与冒险的异世界，体验超乎想象的奇幻旅程与精彩故事。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (14, 1, 1, 4, 4, "冒险漫画", "maoxianmanh", "/manhuafenlei/maoxianmanh", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "冒险漫画 - 在线漫画阅读", "冒险漫画,探险漫画,旅程漫画", "冒险漫画频道收录惊险刺激的冒险题材漫画，跟随主角踏上未知的旅程，探索神秘的世界。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (15, 1, 1, 4, 4, "悬疑漫画", "xuanyimanhu", "/manhuafenlei/xuanyimanhu", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "悬疑漫画 - 在线漫画阅读", "悬疑漫画,推理漫画,烧脑漫画", "悬疑漫画频道提供烧脑刺激的悬疑推理题材漫画，层层迷雾等待揭开真相，挑战你的推理能力。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (16, 1, 1, 4, 4, "搞笑漫画", "gaoxiaomanh", "/manhuafenlei/gaoxiaomanh", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "搞笑漫画 - 在线漫画阅读", "搞笑漫画,幽默漫画,欢乐漫画", "搞笑漫画频道带来轻松愉快的幽默题材漫画，让你在阅读中开怀大笑，释放生活中的压力。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
    (17, 1, 1, 4, 4, "古风漫画", "gufengmanh", "/manhuafenlei/gufengmanh", "", "", "", "", 1, "", "", "lists_article.htm", "view_article.htm", "古风漫画 - 在线漫画阅读", "古风漫画,国风漫画,古代漫画", "古风漫画频道呈现唯美古韵的国风题材漫画，带你穿越时空感受古代江湖的恩怨情仇与诗意浪漫。", 100, 0, 0, 1, 0, 0, 1, 0, "", "cn", 1700000000, 1700000000, 0, 0, 0, 0, "", 0),
]
new_inserts["ey_arctype"] = [make_insert("ey_arctype", row) for row in arctypes]

# ---- ey_archives ---- (65 columns)
mangas = [
    (1, 10, "星海纪元", "原创作者", 1, 1, 1, "/template/pc/skin/images/manga/cover-1.jpg", "星海纪元 - 热血漫画", "星海纪元,热血漫画,原创漫画", "星海纪元讲述在浩瀚宇宙中，少年战士为守护家园踏上星际征途的热血故事，充满战斗与友情的史诗冒险。", 3200),
    (2, 10, "月下剑影", "墨白", 0, 0, 1, "/template/pc/skin/images/manga/cover-2.jpg", "月下剑影 - 热血漫画", "月下剑影,热血漫画,剑客漫画", "月下剑影描绘月光下孤独剑客的修行之路，以剑为伴斩破黑暗，在刀光剑影中寻找属于自己的道。", 1850),
    (3, 11, "夏日心动", "小鹿", 1, 0, 1, "/template/pc/skin/images/manga/cover-3.jpg", "夏日心动 - 恋爱漫画", "夏日心动,恋爱漫画,青春漫画", "夏日心动记录夏天海边小镇上两个少年的纯爱故事，阳光、海浪与心跳交织出最美好的初恋回忆。", 2800),
    (4, 12, "苍穹旅团", "青空", 0, 0, 1, "/template/pc/skin/images/manga/cover-4.jpg", "苍穹旅团 - 校园漫画", "苍穹旅团,校园漫画,社团漫画", "苍穹旅团讲述一群高中生组建航空社团的青春故事，在追逐蓝天梦想的过程中收获友情与成长。", 1500),
    (5, 13, "灵境档案", "雾隐", 1, 1, 1, "/template/pc/skin/images/manga/cover-5.jpg", "灵境档案 - 奇幻漫画", "灵境档案,奇幻漫画,灵异漫画", "灵境档案记录神秘灵境世界中发生的超自然事件调查故事，揭开隐藏在迷雾背后的惊天秘密。", 4200),
    (6, 13, "异界来信", "星河", 0, 0, 1, "/template/pc/skin/images/manga/cover-6.jpg", "异界来信 - 奇幻漫画", "异界来信,奇幻漫画,异世界漫画", "异界来信讲述一封来自平行世界的神秘信件引发的跨次元冒险，探索未知世界的奇妙旅程。", 2100),
    (7, 14, "时间收藏家", "时雨", 1, 0, 1, "/template/pc/skin/images/manga/cover-7.jpg", "时间收藏家 - 冒险漫画", "时间收藏家,冒险漫画,时间旅行", "时间收藏家讲述能感知时间碎片的少女穿越时空收集失落记忆的冒险故事，每一段时光都值得珍藏。", 3500),
    (8, 14, "云海彼端", "风间", 0, 0, 1, "/template/pc/skin/images/manga/cover-8.jpg", "云海彼端 - 冒险漫画", "云海彼端,冒险漫画,飞行漫画", "云海彼端描绘少年驾驶飞行器穿越云海探索未知大陆的冒险旅程，在云端之上寻找传说中的天空之城。", 1900),
    (9, 15, "雾城回响", "夜行者", 1, 0, 1, "/template/pc/skin/images/manga/cover-9.jpg", "雾城回响 - 悬疑漫画", "雾城回响,悬疑漫画,推理漫画", "雾城回响讲述在被浓雾笼罩的城市中，侦探追查一系列离奇案件背后的真相，层层迷雾下隐藏着惊人秘密。", 2600),
    (10, 15, "绯月交响曲", "月华", 0, 0, 1, "/template/pc/skin/images/manga/cover-10.jpg", "绯月交响曲 - 悬疑漫画", "绯月交响曲,悬疑漫画,音乐漫画", "绯月交响曲以月光下的音乐厅为舞台，一桩谋杀案牵出十年前的旧事，真相如交响乐般层层展开。", 1700),
    (11, 16, "星轨物语", "乐天派", 0, 0, 1, "/template/pc/skin/images/manga/cover-11.jpg", "星轨物语 - 搞笑漫画", "星轨物语,搞笑漫画,日常漫画", "星轨物语讲述一群性格迥异的天文社成员在校园里闹出的搞笑日常，星空下的欢乐故事让人捧腹不已。", 2300),
    (12, 16, "幻夜绘卷", "画师甲", 0, 0, 1, "/template/pc/skin/images/manga/cover-12.jpg", "幻夜绘卷 - 搞笑漫画", "幻夜绘卷,搞笑漫画,绘画漫画", "幻夜绘卷描绘一位拥有神奇画笔的画师，画出的东西竟然会活过来，由此引发一连串爆笑的奇幻日常。", 1400),
    (13, 17, "苍蓝星纹", "青衣", 1, 0, 1, "/template/pc/skin/images/manga/cover-13.jpg", "苍蓝星纹 - 古风漫画", "苍蓝星纹,古风漫画,国风漫画", "苍蓝星纹讲述古代王朝中身负星纹印记的少年卷入宫廷权谋的故事，古风韵味中蕴含家国天下的情怀。", 3100),
    (14, 17, "时之碎片", "流年", 0, 0, 1, "/template/pc/skin/images/manga/cover-14.jpg", "时之碎片 - 古风漫画", "时之碎片,古风漫画,穿越漫画", "时之碎片讲述现代少女意外穿越回古代，在乱世中寻找归途的故事，时光流转中邂逅命中注定的缘分。", 1950),
    (15, 11, "星尘骑士", "银河", 0, 0, 1, "/template/pc/skin/images/manga/cover-15.jpg", "星尘骑士 - 恋爱漫画", "星尘骑士,恋爱漫画,浪漫漫画", "星尘骑士讲述少女与来自星空的骑士之间跨越光年的浪漫爱情，星尘为证许下永恒的誓言。", 2400),
    (16, 12, "梦境守护者", "幻夜", 0, 0, 1, "/template/pc/skin/images/manga/cover-16.jpg", "梦境守护者 - 校园漫画", "梦境守护者,校园漫画,梦境漫画", "梦境守护者讲述能进入他人梦境的高中生守护同学们心灵的故事，在梦与现实之间编织温暖的青春物语。", 1600),
]
archives_lines = []
for m in mangas:
    aid, typeid, title, author, is_recom, is_head, is_litpic, litpic, seo_title, seo_keywords, seo_description, click = m
    add_time = 1700000000 + aid * 100
    update_time = 1700100000 + aid * 100
    row = [
        aid, typeid, "", 1, 0, title, "", litpic, is_head, 0, 0, is_recom, 0, is_litpic, 0, 0, 0,
        "原创", author, click, 0, "", 0, seo_title, seo_keywords, seo_description,
        0, 0, 0, "0.00", "0.00", 0, 0, "0.00", 0, 0, 0, 99999, 1, 0, "",
        "", 1, 100, "cn", 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, "", 0, 0, 0,
        add_time, update_time, 0, 1, 1, "", "",
    ]
    archives_lines.append(make_insert("ey_archives", row))
new_inserts["ey_archives"] = archives_lines

# ---- ey_article_content ---- (6 columns: id, aid, content, content_ey_m, add_time, update_time)
article_contents = [
    "&lt;p&gt;《星海纪元》是一部以宇宙星际为背景的热血漫画作品。故事设定在遥远的未来，人类文明已经扩展到银河系各个角落。主角星野是一个来自边缘星球的少年，他怀揣着守护家园的梦想，踏上了星际征途。&lt;/p&gt;&lt;p&gt;在旅途中，星野结识了一群志同道合的伙伴，他们共同面对来自宇宙深处的威胁。每一次战斗都是对意志的考验，每一次胜利都凝聚着友情的力量。漫画以宏大的宇宙观和细腻的人物刻画，展现了一段关于勇气、信念与成长的史诗冒险。&lt;/p&gt;&lt;p&gt;作者通过精彩的分镜和富有张力的剧情设计，将读者带入一个充满未知与奇迹的星际世界。无论你是热血漫画的忠实粉丝，还是初次接触科幻题材的读者，《星海纪元》都将带给你不一样的阅读体验。&lt;/p&gt;",
    "&lt;p&gt;《月下剑影》讲述了一个关于剑道修行的孤独旅程。主角夜辰是一位沉默寡言的剑客，他背负着家族的使命，在月光下不断磨砺自己的剑技。每一刀每一剑都蕴含着对道的追求。&lt;/p&gt;&lt;p&gt;故事以东方武侠风格为基调，融入了现代漫画的表现手法。月色如水的夜晚，剑光如虹的瞬间，构成了一幅幅唯美的画面。夜辰在修行之路上遇到的每一个人、每一场战斗，都在塑造着他独特的剑道。&lt;/p&gt;&lt;p&gt;这部漫画不仅展现了精彩的剑术对决，更深入探讨了何为强者、何为正义的哲学命题。在刀光剑影的背后，是一个孤独灵魂对自我超越的不懈追求。&lt;/p&gt;",
    "&lt;p&gt;《夏日心动》是一部清新甜蜜的恋爱漫画，故事发生在一个海边小镇。主角夏帆是一个性格开朗的高中女生，她在暑假期间遇到了从城市转学来的少年海斗。&lt;/p&gt;&lt;p&gt;两人在阳光灿烂的海滩上相识，在海浪声中渐渐靠近。夏帆教海斗冲浪，海斗为夏帆弹吉他，青涩的感情在夏日微风中悄然萌芽。然而暑假终将结束，海斗需要回到城市，这段初恋能否经得起距离的考验？&lt;/p&gt;&lt;p&gt;漫画以细腻的笔触描绘了初恋的悸动与美好，每一帧画面都洋溢着青春的气息。阳光、海浪、蝉鸣、烟花，构成了最纯粹的夏日恋爱物语。&lt;/p&gt;",
    "&lt;p&gt;《苍穹旅团》是一部以校园航空社团为题材的青春漫画。故事的主人公们是一群对天空充满向往的高中生，他们组建了学校第一个航空爱好者社团——苍穹旅团。&lt;/p&gt;&lt;p&gt;从最初的几个人到逐渐壮大，社团成员们一起学习航空知识、制作模型飞机、参加飞行比赛。在这个过程中，他们不仅收获了飞行的快乐，更收获了珍贵的友情。每个角色都有自己独特的性格和梦想，他们在追逐蓝天梦想的路上互相支持、共同成长。&lt;/p&gt;&lt;p&gt;漫画充满了青春的热血与感动，展现了年轻人为梦想拼搏的精神。蓝天白云之间，是属于少年们的无限可能。&lt;/p&gt;",
    "&lt;p&gt;《灵境档案》是一部融合了奇幻与悬疑元素的漫画作品。故事设定在一个与现实平行的灵境世界，这里存在着各种超自然现象和神秘生物。主角灵曦是一位天赋异禀的灵境调查员。&lt;/p&gt;&lt;p&gt;她受命调查一系列离奇的灵境事件，从消失的村庄到诡异的幻觉，每一个案件背后都隐藏着不为人知的秘密。随着调查的深入，灵曦发现这些事件似乎都与一个古老的预言有关，而她自己也被卷入了一场关乎两个世界命运的阴谋之中。&lt;/p&gt;&lt;p&gt;漫画以精美的画风和扣人心弦的剧情，带领读者进入一个充满神秘与奇幻的世界。每一次翻页都是一次新的发现，每一个真相都令人震撼。&lt;/p&gt;",
    "&lt;p&gt;《异界来信》讲述了一个关于跨次元冒险的奇幻故事。一天，普通高中生星河收到了一封来自平行世界的神秘信件，信中描述了一个正在面临危机的异世界。&lt;/p&gt;&lt;p&gt;好奇心驱使下，星河找到了穿越次元的方法，踏入了那个陌生的世界。在那里，他发现一切与信中描述的截然不同——魔法、精灵、巨龙，以及一个即将被黑暗吞噬的王国。星河逐渐意识到，自己或许是拯救这个世界的关键人物。&lt;/p&gt;&lt;p&gt;这部漫画以丰富的想象力和细腻的世界观构建，为读者呈现了一个充满奇遇的异世界冒险故事。每一次探索都充满惊喜，每一段旅程都令人心驰神往。&lt;/p&gt;",
    "&lt;p&gt;《时间收藏家》是一部关于时间旅行的冒险漫画。主角时雨拥有一种特殊能力——她能够感知时间碎片的存在，并通过触摸碎片回到过去的那一刻。&lt;/p&gt;&lt;p&gt;时雨将这份能力用于收集人们遗失的珍贵记忆，帮助那些因遗憾而痛苦的人重温美好时光。然而，随着收藏的时间碎片越来越多，时雨发现每一次穿越都会对现在产生影响，而一个关于时间本身的巨大秘密正在慢慢浮出水面。&lt;/p&gt;&lt;p&gt;漫画以温暖而略带忧伤的笔调，探讨了时间、记忆与遗憾的主题。每一段被收藏的时光，都是一个动人的故事。&lt;/p&gt;",
    "&lt;p&gt;《云海彼端》是一部以飞行冒险为主题的漫画作品。主角风间是一个向往天空的少年，他驾驶着自制的飞行器，踏上了穿越云海探索未知大陆的旅程。&lt;/p&gt;&lt;p&gt;在云海之上，风间遇到了各种奇异的空中生物和漂浮岛屿，也结识了来自不同天空部落的伙伴。他们共同追寻着一个古老的传说——在云海的最彼端，存在着一座传说中的天空之城。&lt;/p&gt;&lt;p&gt;漫画以壮阔的空中场景和充满想象力的世界观，为读者展现了一个自由而浪漫的飞行冒险故事。在云端之上，梦想没有边界。&lt;/p&gt;",
    "&lt;p&gt;《雾城回响》是一部充满悬疑氛围的推理漫画。故事发生在一座常年被浓雾笼罩的城市，这里接连发生了多起离奇的失踪案件。主角夜行者是一位才华横溢的私家侦探。&lt;/p&gt;&lt;p&gt;他受委托调查这些案件，却发现每一条线索都指向城市最显赫的家族。随着调查的深入，夜行者不仅要面对来自权势的威胁，还要解开十年前一桩旧案与当前案件的关联。浓雾之下，真相若隐若现。&lt;/p&gt;&lt;p&gt;漫画以阴郁而精致的画风营造了浓厚的悬疑氛围，每一个反转都出人意料。当雾散去的那一刻，所有的秘密都将揭晓。&lt;/p&gt;",
    "&lt;p&gt;《绯月交响曲》是一部以音乐厅为舞台的悬疑漫画。故事从月光下的一座古老音乐厅开始，一位著名指挥家在演出当晚被谋杀，而嫌疑指向了乐团中的每一个人。&lt;/p&gt;&lt;p&gt;主角月华是一位年轻的音乐记者，她深入调查这起案件，发现谋杀手法与十年前一首未完成的交响曲密切相关。每一个音符都暗含线索，每一段旋律都藏着秘密。月华必须在下一个绯月之夜到来之前揭开真相。&lt;/p&gt;&lt;p&gt;漫画巧妙地将音乐元素与推理剧情结合，为读者带来一场视听与思维的双重盛宴。当最后的音符落下，真相如交响乐般震撼人心。&lt;/p&gt;",
    "&lt;p&gt;《星轨物语》是一部轻松搞笑的校园日常漫画。故事围绕一群性格各异的天文社成员展开，他们每天在社团活动室里上演着令人捧腹的欢乐日常。&lt;/p&gt;&lt;p&gt;社长是个天文狂热者却总是搞错星座，副社长是个吃货却偏偏怕黑，还有一位声称自己来自火星的奇怪社员。他们一起观星、露营、参加天文知识竞赛，每一次活动都会闹出各种笑话。&lt;/p&gt;&lt;p&gt;漫画以幽默轻松的风格，展现了青春校园生活的美好与欢乐。在星空之下，每一个平凡的日常都闪闪发光。&lt;/p&gt;",
    "&lt;p&gt;《幻夜绘卷》是一部融合了搞笑与奇幻元素的漫画作品。主角画师甲拥有一支神奇的画笔，凡是用这支笔画出来的东西，到了夜晚竟然都会活过来！&lt;/p&gt;&lt;p&gt;从画中走出的猫咪在房间里上蹿下跳，画的食物散发着香气却无法食用，甚至画出了一个自称勇者的纸片人非要拯救世界。画师甲每天晚上都要应对这些从画中跑出来的麻烦家伙，爆笑的奇幻日常就此展开。&lt;/p&gt;&lt;p&gt;漫画以天马行空的想象力和幽默诙谐的表达，带给读者轻松愉快的阅读体验。每一页都是一次新的惊喜。&lt;/p&gt;",
    "&lt;p&gt;《苍蓝星纹》是一部以古代王朝为背景的古风漫画。主角青衣是一位身负星纹印记的少年，这个印记被视为古老预言中改变天下格局的关键。&lt;/p&gt;&lt;p&gt;青衣在宫廷权谋的漩涡中艰难前行，他必须学会在各方势力的博弈中保护自己和身边的人。从江湖到朝堂，从战场到书房，青衣的成长之路充满了挑战与抉择。古风韵味中蕴含着家国天下的深厚情怀。&lt;/p&gt;&lt;p&gt;漫画以精美的古风画风和跌宕起伏的剧情，为读者呈现了一幅波澜壮阔的古代画卷。星纹闪耀之处，命运已然不同。&lt;/p&gt;",
    "&lt;p&gt;《时之碎片》是一部融合了古风与穿越元素的漫画作品。现代少女流年意外穿越回古代，在一个战乱纷飞的时代中寻找归途。&lt;/p&gt;&lt;p&gt;在陌生的古代世界，流年凭借现代知识艰难求生，同时邂逅了一位身份神秘的剑客。两人从最初的互相猜忌到后来的生死相依，在乱世中谱写了一段跨越时空的浪漫故事。时光流转，缘分天注定。&lt;/p&gt;&lt;p&gt;漫画以唯美的画风和动人的情感描写，将古代风情与现代思维巧妙融合。在时光的碎片中，找到命中注定的那个人。&lt;/p&gt;",
    "&lt;p&gt;《星尘骑士》是一部浪漫唯美的恋爱漫画。主角银河是一个普通的地球少女，一天夜晚，一位来自遥远星系的骑士降临在她的面前，声称她是星际预言中的关键人物。&lt;/p&gt;&lt;p&gt;骑士守护在银河身边，保护她免受来自宇宙深处的威胁。在朝夕相处中，两人之间萌生了跨越光年的感情。然而骑士的使命与银河的安全之间存在着不可调和的矛盾，这段星际之恋将何去何从？&lt;/p&gt;&lt;p&gt;漫画以梦幻般的画风和甜蜜感人的剧情，为读者呈现了一段超越时空的浪漫爱情。星尘为证，许下永恒的誓言。&lt;/p&gt;",
    "&lt;p&gt;《梦境守护者》是一部以梦境为题材的校园漫画。主角幻夜是一位能够进入他人梦境的高中生，他利用这份特殊能力守护同学们的心灵健康。&lt;/p&gt;&lt;p&gt;每当同学被噩梦困扰时，幻夜就会进入他们的梦境，帮助驱散恐惧、找回勇气。在这个过程中，幻夜也逐渐了解到每个人内心深处的脆弱与坚强。然而，一个来自梦境深处的神秘存在正在威胁着所有人的安宁。&lt;/p&gt;&lt;p&gt;漫画以温暖治愈的风格，在梦与现实的交织中编织出一段段动人的青春物语。守护每一个人的美梦，是最温柔的使命。&lt;/p&gt;",
]
article_content_lines = []
for i in range(16):
    aid = i + 1
    content = article_contents[i]
    add_time = 1700000000 + aid * 100
    update_time = 1700100000 + aid * 100
    row = [i + 1, aid, content, "", add_time, update_time]
    article_content_lines.append(make_insert("ey_article_content", row))
new_inserts["ey_article_content"] = article_content_lines

# ---- ey_links ---- (19 columns)
links_data = [
    (1, 1, 1, "漫画联盟", "https://example.com", "", 1, 0, 0, "", "", 1, 0, 0, 0, "cn", 0, 1700000000, 1700000000),
    (2, 1, 1, "动漫之家", "https://example.com", "", 2, 0, 0, "", "", 1, 0, 0, 0, "cn", 0, 1700000000, 1700000000),
    (3, 1, 1, "二次元世界", "https://example.com", "", 3, 0, 0, "", "", 1, 0, 0, 0, "cn", 0, 1700000000, 1700000000),
]
new_inserts["ey_links"] = [make_insert("ey_links", row) for row in links_data]

# ---- ey_ad_position ---- (12 columns)
ad_pos_data = [
    (1, "首页-幻灯片", 1, 1920, 550, "", 1, "cn", 0, 0, 1700000000, 1700000000),
    (3, "手机端首页幻灯", 1, 0, 0, "", 1, "cn", 1, 0, 1700000000, 1700000000),
]
new_inserts["ey_ad_position"] = [make_insert("ey_ad_position", row) for row in ad_pos_data]

# ---- ey_tagindex ---- (18 columns)
tags_data = [
    (1, "热血", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
    (2, "恋爱", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
    (3, "校园", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
    (4, "奇幻", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
    (5, "冒险", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
    (6, "悬疑", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
    (7, "搞笑", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
    (8, "古风", 0, "", "", "", "", 0, 2, 0, 0, 0, 0, 0, 0, "cn", 1700000000, 1700000000),
]
new_inserts["ey_tagindex"] = [make_insert("ey_tagindex", row) for row in tags_data]

# ---- ey_taglist ---- (8 columns)
taglist_data = [
    (1, 1, 10, "热血", 0, "cn", 1700000000, 1700000000),
    (1, 2, 10, "热血", 0, "cn", 1700000000, 1700000000),
    (2, 3, 11, "恋爱", 0, "cn", 1700000000, 1700000000),
    (2, 15, 11, "恋爱", 0, "cn", 1700000000, 1700000000),
    (3, 4, 12, "校园", 0, "cn", 1700000000, 1700000000),
    (3, 16, 12, "校园", 0, "cn", 1700000000, 1700000000),
    (4, 5, 13, "奇幻", 0, "cn", 1700000000, 1700000000),
    (4, 6, 13, "奇幻", 0, "cn", 1700000000, 1700000000),
    (5, 7, 14, "冒险", 0, "cn", 1700000000, 1700000000),
    (5, 8, 14, "冒险", 0, "cn", 1700000000, 1700000000),
    (6, 9, 15, "悬疑", 0, "cn", 1700000000, 1700000000),
    (6, 10, 15, "悬疑", 0, "cn", 1700000000, 1700000000),
    (7, 11, 16, "搞笑", 0, "cn", 1700000000, 1700000000),
    (7, 12, 16, "搞笑", 0, "cn", 1700000000, 1700000000),
    (8, 13, 17, "古风", 0, "cn", 1700000000, 1700000000),
    (8, 14, 17, "古风", 0, "cn", 1700000000, 1700000000),
]
new_inserts["ey_taglist"] = [make_insert("ey_taglist", row) for row in taglist_data]

# ---- Process the file ----
# Strategy: Find "-- Records of `table`" sections. For tables in CLEAR/REPLACE,
# skip all INSERT lines until we hit "-- Table structure for" or "-- Records of"
# (the next section). Then output replacement INSERTs if applicable.

output_lines = []
i = 0
n = len(lines)

while i < n:
    line = lines[i]
    stripped = line.rstrip("\n")

    # Detect "-- Records of `ey_xxx`"
    records_match = re.match(r'^-- Records of `(\w+)`', stripped)
    if records_match:
        table_name = records_match.group(1)
        output_lines.append(line)  # Output the "-- Records of" comment
        i += 1

        if table_name in CLEAR_TABLES or table_name in REPLACE_TABLES:
            # Skip ALL lines until we reach the next section marker
            # Section markers are "-- Table structure for" or "-- Records of"
            # But we need to skip the "-- -----------------------------" separators too
            while i < n:
                l = lines[i]
                s = l.rstrip("\n")
                # Check if this is a new section start
                if re.match(r'^-- (Table structure|Records) for ', s):
                    break
                # Skip INSERT lines, blank lines, and separator lines
                i += 1

            # Output replacement INSERT lines if applicable
            if table_name in REPLACE_TABLES:
                for nl in new_inserts.get(table_name, []):
                    output_lines.append(nl + "\n")
            # Don't advance i - the current line is the next section
            continue
        else:
            # Normal table - copy everything until next section
            while i < n:
                l = lines[i]
                s = l.rstrip("\n")
                if re.match(r'^-- (Table structure|Records) for ', s):
                    break
                output_lines.append(l)
                i += 1
            continue

    output_lines.append(line)
    i += 1

# Adjust AUTO_INCREMENT values for modified tables
# We need to track which CREATE TABLE we're in, then replace the AUTO_INCREMENT
# in the ENGINE= line that closes that table definition
auto_increment_map = {
    "ey_arctype": 18,
    "ey_archives": 17,
    "ey_article_content": 17,
    "ey_links": 4,
    "ey_ad_position": 4,
    "ey_tagindex": 9,
    "ey_taglist": 17,
    "ey_ad": 1,
    "ey_search_word": 1,
    "ey_admin_log": 1,
    "ey_images_content": 1,
}

current_create_table = None
for idx, line in enumerate(output_lines):
    stripped = line.rstrip("\n")
    # Track CREATE TABLE
    ct_match = re.match(r'^CREATE TABLE `(\w+)`', stripped)
    if ct_match:
        current_create_table = ct_match.group(1)
    # Replace AUTO_INCREMENT in ENGINE= line
    if "AUTO_INCREMENT=" in line and "ENGINE=" in line and current_create_table:
        if current_create_table in auto_increment_map:
            ai_val = auto_increment_map[current_create_table]
            output_lines[idx] = re.sub(r'AUTO_INCREMENT=\d+', f'AUTO_INCREMENT={ai_val}', line)

with open(DST, "w", encoding="utf-8") as f:
    f.writelines(output_lines)

print(f"Done! Written {len(output_lines)} lines to {DST}")
