# EyouCMS 漫画动漫模板 - 使用说明

## 一、项目概述

本模板将 EyouCMS 默认企业模板改造为漫画、动漫、二次元内容展示网站模板。包含：

- 现代、精致、响应式的漫画展示界面
- 首页30秒漫画宣传视频模块（视频文件需另行生成）
- 完整的百度白帽SEO优化
- 清理后的漫画数据库（含16条原创演示数据）
- PC端和手机端自适应

---

## 二、文件清单

### 修改的模板文件

| 文件 | 说明 |
|------|------|
| `template/pc/header.htm` | 公共头部 - 漫画导航 + 移动端菜单 + 搜索 |
| `template/pc/footer.htm` | 公共底部 - 漫画链接 + 友情链接 |
| `template/pc/index.htm` | 首页 - 视频 + 焦点推荐 + 最新更新 + 热门 + 分类 + 完结 + 排行榜 + 资讯 |
| `template/pc/lists_article.htm` | 栏目列表页 - 漫画卡片网格 + 分页 |
| `template/pc/view_article.htm` | 漫画详情页 - 封面 + 资料 + 正文 + 上下篇 + 相关推荐 |
| `template/pc/lists_search.htm` | 搜索页 - 漫画卡片搜索结果 |
| `template/pc/lists_single.htm` | 单页（关于我们等） |

### 新增的文件

| 文件 | 说明 |
|------|------|
| `template/pc/skin/style/manga.css` | 漫画主题样式表（响应式） |
| `template/pc/skin/js/manga.js` | 前端交互（移动菜单 + 视频懒加载 + 播放控制） |
| `template/pc/skin/video/manga-intro-poster.webp` | 视频封面图（已生成） |
| `template/pc/skin/video/manga-intro.mp4` | 30秒宣传视频（**尚未生成，见下方说明**） |
| `template/pc/skin/images/manga/cover-1.jpg` ~ `cover-16.jpg` | 16张原创漫画封面占位图 |
| `template/pc/404.htm` | 404页面 |
| `install/eyoucms_manga.sql` | 清理后的漫画数据库SQL文件 |

---

## 三、新建漫画栏目

| 栏目ID | 栏目名称 | 父栏目 | 目录 | 内容模型 | 列表模板 | 内容模板 |
|--------|----------|--------|------|----------|----------|----------|
| 1 | 关于我们 | - | guanyuwomen | 单页 | lists_single.htm | - |
| 2 | 最新更新 | - | zuixingengxin | 文章 | lists_article.htm | view_article.htm |
| 3 | 热门漫画 | - | remenmanga | 文章 | lists_article.htm | view_article.htm |
| 4 | 漫画分类 | - | manhuafenlei | 文章 | lists_article.htm | view_article.htm |
| 5 | 完结漫画 | - | wanjiemanhua | 文章 | lists_article.htm | view_article.htm |
| 6 | 漫画资讯 | - | manhuazixun | 文章 | lists_article.htm | view_article.htm |
| 7 | 联系我们 | - | lianxiwomen | 单页 | lists_single.htm | - |
| 10 | 热血漫画 | 漫画分类(4) | rexuemanhua | 文章 | lists_article.htm | view_article.htm |
| 11 | 恋爱漫画 | 漫画分类(4) | lianaimanhu | 文章 | lists_article.htm | view_article.htm |
| 12 | 校园漫画 | 漫画分类(4) | xiaoyuanmanh | 文章 | lists_article.htm | view_article.htm |
| 13 | 奇幻漫画 | 漫画分类(4) | qihuanmanhu | 文章 | lists_article.htm | view_article.htm |
| 14 | 冒险漫画 | 漫画分类(4) | maoxianmanh | 文章 | lists_article.htm | view_article.htm |
| 15 | 悬疑漫画 | 漫画分类(4) | xuanyimanhu | 文章 | lists_article.htm | view_article.htm |
| 16 | 搞笑漫画 | 漫画分类(4) | gaoxiaomanh | 文章 | lists_article.htm | view_article.htm |
| 17 | 古风漫画 | 漫画分类(4) | gufengmanh | 文章 | lists_article.htm | view_article.htm |

---

## 四、演示漫画数据（16条）

| ID | 漫画名称 | 分类 | 作者 |
|----|----------|------|------|
| 1 | 星海纪元 | 热血漫画 | 原创作者 |
| 2 | 月下剑影 | 热血漫画 | 墨白 |
| 3 | 夏日心动 | 恋爱漫画 | 小鹿 |
| 4 | 苍穹旅团 | 校园漫画 | 青空 |
| 5 | 灵境档案 | 奇幻漫画 | 雾隐 |
| 6 | 异界来信 | 奇幻漫画 | 星河 |
| 7 | 时间收藏家 | 冒险漫画 | 时雨 |
| 8 | 云海彼端 | 冒险漫画 | 风间 |
| 9 | 雾城回响 | 悬疑漫画 | 夜行者 |
| 10 | 绯月交响曲 | 悬疑漫画 | 月华 |
| 11 | 星轨物语 | 搞笑漫画 | 乐天派 |
| 12 | 幻夜绘卷 | 搞笑漫画 | 画师甲 |
| 13 | 苍蓝星纹 | 古风漫画 | 青衣 |
| 14 | 时之碎片 | 古风漫画 | 流年 |
| 15 | 星尘骑士 | 恋爱漫画 | 银河 |
| 16 | 梦境守护者 | 校园漫画 | 幻夜 |

---

## 五、首页视频说明

### 视频文件状态

- **封面图** `manga-intro-poster.webp`：已生成（1920x1080，WebP格式）
- **视频文件** `manga-intro.mp4`：**尚未生成**

模板中的视频模块代码已完整实现，包括：HTML5 video标签（muted, autoplay, loop, playsinline）、IntersectionObserver懒加载、播放/暂停按钮、失败时显示封面图、手机端兼容、减少动态效果支持。

### 30秒分镜脚本

| 时间 | 画面内容 |
|------|----------|
| 0-4秒 | 漫画书页缓缓打开，书页中浮现星空和二次元世界轮廓，粒子效果升起 |
| 4-9秒 | 快速切换4个原创漫画场景：热血战斗、校园教室、恋爱樱花、奇幻森林 |
| 9-15秒 | 原创角色穿过城市天际线、进入奇幻森林、飞越星空，场景间用漫画分镜线过渡 |
| 15-21秒 | 展示漫画封面卡片网格，卡片依次翻转出现 |
| 21-26秒 | 切换到电脑屏幕显示漫画网站首页，再切换到手机端滑动浏览 |
| 26-30秒 | 回到漫画世界背景，中央渐显文字"发现更多精彩漫画" |

### 视频生成提示词

```
A 30-second anime-style promotional video. Scene 1 (0-4s): An open manga book on a table, pages glowing with purple light, particles rising from the pages, revealing a fantasy world. Scene 2 (4-9s): Quick cuts between four original anime scenes - a young swordsman in ruins, a sunny classroom, two characters under cherry blossoms, a glowing fantasy forest. Scene 3 (9-15s): An original black-haired anime character running through a city skyline, then through a fantasy forest, then flying through a starry sky, with comic panel transitions. Scene 4 (15-21s): Manga cover cards in a grid layout flipping to reveal covers. Scene 5 (21-26s): A computer screen showing a manga website, transitioning to a phone screen scrolling through manga. Scene 6 (26-30s): Back to the fantasy world background with stars and city silhouette, text appearing "Discover More Amazing Manga". Color palette: purple, pink, blue-violet tones. Style: modern anime, clean, vibrant. No copyrighted characters. Original art only.
```

### 视频压缩参数建议

```
编码：H.264 (libx264)
分辨率：1920x1080 或 1280x720
帧率：24fps 或 30fps
码率：2000-4000 kbps
文件大小目标：8-12MB
音频：无（静音版本）
容器：MP4
```

FFmpeg命令示例：
```bash
ffmpeg -i input.mp4 -c:v libx264 -preset slow -crf 28 -vf "scale=1920:1080" -an -movflags +faststart manga-intro.mp4
```

生成后将文件放置到 `template/pc/skin/video/manga-intro.mp4` 即可自动加载。

---

## 六、模板安装步骤

1. 将 `template/pc/` 目录上传到 EyouCMS 根目录，覆盖原模板文件
2. 登录 EyouCMS 后台
3. 进入「设置」-「基本信息」，设置网站名称、关键词、描述
4. 进入「栏目管理」，确认栏目已正确导入
5. 清除缓存（后台首页点击「清除缓存」）

---

## 七、SQL导入步骤

1. 在 MySQL 中创建新数据库（或使用已有数据库）
2. 导入 `install/eyoucms_manga.sql`：
   ```bash
   mysql -u root -p 数据库名 < install/eyoucms_manga.sql
   ```
   或使用 phpMyAdmin 导入
3. 修改 `application/database.php` 中的数据库名称为新数据库名
4. 登录后台清除缓存

**注意：** 导入前请确保数据库为空或已备份。此SQL会先 DROP 再 CREATE 所有表。

---

## 八、百度搜索资源平台后续配置清单

- [ ] 在百度搜索资源平台添加网站
- [ ] 完成网站验证
- [ ] 提交 sitemap.xml
- [ ] 在 robots.txt 中确保未屏蔽 CSS/JS/图片
- [ ] 配置百度自动推送
- [ ] 检查移动适配
- [ ] 提交链接收录

---

## 九、尚未完成的功能

1. **MP4视频文件未生成**：当前环境无 ffmpeg，需使用分镜脚本和提示词制作后放置到 `template/pc/skin/video/manga-intro.mp4`
2. **网站Logo**：需自行上传
3. **网站地图**：需在 EyouCMS 后台开启并生成
4. **结构化数据**：需根据实际URL配置后添加JSON-LD
5. **实际漫画内容**：演示数据为原创虚构内容，实际运营需替换为真实漫画内容
