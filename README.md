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

### 修改的文件

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

### 删除/替换的旧数据库内容

| 数据表 | 旧内容 | 新内容 |
|--------|--------|--------|
| `ey_arctype` | 22条企业栏目（产品展示、解决方案等） | 15条漫画栏目 |
| `ey_archives` | 42条企业文章 | 16条漫画演示数据 |
| `ey_article_content` | 44条企业文章正文 | 16条漫画简介正文 |
| `ey_links` | 5条旧友情链接（百度、腾讯等） | 3条漫画主题链接 |
| `ey_ad` | 4条旧广告 | 已清空 |
| `ey_tagindex` | 21条旧标签 | 8条漫画标签 |
| `ey_taglist` | 20条旧标签映射 | 16条漫画标签映射 |
| `ey_search_word` | 3条旧搜索词 | 已清空 |
| `ey_admin_log` | 2条旧日志 | 已清空 |
| `ey_images_content` | 6条旧图集内容 | 已清空 |

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

## 五、使用的内容模型和字段

### 内容模型：文章模型（channel=1）

漫画内容使用 EyouCMS 文章模型，涉及以下数据表：

- `ey_archives`（文档主表）：标题、作者、封面图(litpic)、SEO字段、点击量、更新时间等
- `ey_article_content`（文章附加表）：正文内容(content)

### 使用的字段

| 字段 | 说明 | 调用方式 |
|------|------|----------|
| title | 漫画名称 | `{$field.title}` |
| author | 作者 | `{$field.author}` |
| litpic | 封面图 | `{$field.litpic}` |
| is_litpic | 是否有封面 | `{$field.is_litpic}` |
| typename | 分类名称 | `{$field.typename}` |
| click | 点击量 | `{$field.click}` |
| seo_title | SEO标题 | `{$field.seo_title}` |
| seo_description | SEO描述/简介 | `{$field.seo_description}` |
| update_time | 更新时间 | `{$field.update_time}` |
| content | 正文 | `{$eyou.field.content}` |
| arcurl | 详情链接 | `{$field.arcurl}` |
| typeurl | 栏目链接 | `{$field.typeurl}` |

---

## 六、首页视频说明

### 视频文件状态

- **封面图** `manga-intro-poster.webp`：已生成（1920x1080，WebP格式，21KB）
- **视频文件** `manga-intro.mp4`：**尚未生成**

当前环境没有 ffmpeg 等视频编码工具，无法直接生成 MP4 文件。模板中的视频模块代码已完整实现，包括：
- HTML5 `<video>` 标签（muted, autoplay, loop, playsinline）
- IntersectionObserver 懒加载
- 播放/暂停按钮（无障碍标签）
- 失败时显示封面图
- 手机端兼容
- 减少动态效果支持

### 30秒分镜脚本

| 时间 | 画面内容 |
|------|----------|
| 0-4秒 | 漫画书页从左到右缓缓打开，书页中浮现出星空和二次元世界的轮廓，粒子效果从书页中升起 |
| 4-9秒 | 快速切换4个原创漫画场景：热血战斗（少年持剑站在废墟中）、校园教室（阳光从窗户洒入）、恋爱场景（樱花树下两人对视）、奇幻森林（发光的蘑菇和精灵） |
| 9-15秒 | 原创角色（黑发少年）穿过城市天际线、进入奇幻森林、飞越星空，场景之间用漫画分镜线过渡 |
| 15-21秒 | 展示漫画封面卡片网格，卡片依次翻转出现，展示最新更新和热门漫画的视觉效果 |
| 21-26秒 | 画面切换到电脑屏幕显示漫画网站首页，然后切换到手机端滑动浏览漫画，设备之间用流畅过渡 |
| 26-30秒 | 画面回到原创漫画世界背景（星空+城市轮廓），中央渐显文字"发现更多精彩漫画"，底部出现通用引导按钮 |

### 视频生成提示词

将以下提示词用于AI视频生成工具（如 Runway Gen-3、Pika Labs、Sora 等）：

**提示词（英文）：**
```
A 30-second anime-style promotional video. Scene 1 (0-4s): An open manga book on a table, pages glowing with purple light, particles rising from the pages, revealing a fantasy world. Scene 2 (4-9s): Quick cuts between four original anime scenes - a young swordsman in ruins, a sunny classroom, two characters under cherry blossoms, a glowing fantasy forest. Scene 3 (9-15s): An original black-haired anime character running through a city skyline, then through a fantasy forest, then flying through a starry sky, with comic panel transitions. Scene 4 (15-21s): Manga cover cards in a grid layout flipping to reveal covers, showcasing latest updates. Scene 5 (21-26s): A computer screen showing a manga website, transitioning to a phone screen scrolling through manga. Scene 6 (26-30s): Back to the fantasy world background with stars and city silhouette, text appearing "Discover More Amazing Manga". Color palette: purple, pink, blue-violet tones. Style: modern anime, clean, vibrant. No copyrighted characters. Original art only.
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

FFmpeg 命令示例：
```bash
ffmpeg -i input.mp4 -c:v libx264 -preset slow -crf 28 -vf "scale=1920:1080" -an -movflags +faststart manga-intro.mp4
```

生成后将文件放置到 `template/pc/skin/video/manga-intro.mp4` 即可自动加载。

---

## 七、模板安装步骤

1. 将 `template/pc/` 目录上传到 EyouCMS 根目录，覆盖原模板文件
2. 登录 EyouCMS 后台
3. 进入「设置」-「基本信息」，设置网站名称、关键词、描述
4. 进入「栏目管理」，确认栏目已正确导入
5. 清除缓存（后台首页点击「清除缓存」）

---

## 八、SQL导入步骤

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

## 九、清除缓存和更新页面步骤

1. 登录 EyouCMS 后台
2. 点击右上角「清除缓存」
3. 进入「生成」-「一键更新」（如有静态化功能）
4. 刷新浏览器查看效果

---

## 十、EyouCMS后台设置说明

1. **网站名称**：设置为你的漫画网站名称
2. **网站关键词**：如"漫画,动漫,在线漫画,漫画阅读"
3. **网站描述**：一句话描述网站定位
4. **网站Logo**：上传你的网站Logo
5. **栏目SEO**：每个栏目单独设置SEO标题、关键词、描述
6. **内容属性**：使用「头条(h)」「推荐(r)」标记首页推荐内容

---

## 十一、百度搜索资源平台后续配置清单

- [ ] 在百度搜索资源平台添加网站
- [ ] 完成网站验证
- [ ] 提交 sitemap.xml
- [ ] 在 robots.txt 中确保未屏蔽 CSS/JS/图片
- [ ] 配置百度自动推送（后台功能，不在前端模板中写入Token）
- [ ] 检查移动适配
- [ ] 提交链接收录

---

## 十二、尚未完成或无法确认的功能

1. **MP4视频文件未生成**：当前环境无 ffmpeg，无法生成视频。需使用上述分镜脚本和提示词，通过视频生成工具制作后放置到 `template/pc/skin/video/manga-intro.mp4`
2. **网站Logo**：需自行上传，模板使用 `{eyou:global name='web_name' /}` 动态显示网站名称
3. **网站地图**：需在 EyouCMS 后台开启并生成
4. **Canonical标签**：EyouCMS v1.7.1 需在后台确认是否支持动态canonical输出，如不支持则不添加以避免错误
5. **结构化数据**：模板已预留结构化数据位置，需根据实际URL配置后添加JSON-LD
6. **实际漫画内容**：演示数据为原创虚构内容，实际运营需替换为真实漫画内容
