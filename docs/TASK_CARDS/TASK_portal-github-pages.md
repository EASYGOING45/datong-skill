# TASK_portal-github-pages - datong-skill GitHub Pages 门户

**状态**：✅已完成（本地构建）

**创建时间**：2026-04-11 19:50

---

## 🎯 任务目标

为 datong-skill 构建一个可部署在 GitHub Pages 上的静态门户，作为项目的「首页 / Landing Page」，展示方法论体系、提供快速导航、降低使用门槛。

**设计方向：东方哲理 × 现代克制**
- 参考：广州中山纪念堂色调 + Pretext 极简排版 + UI/UX Skill 站结构
- 部署：`https://EASYGOING45.github.io/datong-skill/`

## 📦 涉及文件

- `docs/index.html` - 门户首页（新建）
- `docs/assets/css/` - 样式目录（新建）
- `docs/assets/css/style.css` - 主样式文件（新建）
- `docs/assets/js/` - JS 目录（新建）
- `docs/assets/js/main.js` - 交互脚本（新建）
- `docs/assets/images/` - 图片资源（新建）
- `docs/404.html` - 404 页面（新建）
- `.github/workflows/pages.yml` - GitHub Pages 部署 workflow（新建）

## 📋 执行步骤

1. **设计系统**：确定配色、字体、间距规范（基于中山纪念堂色调：宝蓝 + 朱红 + 米黄 + 金色 + 白灰）
2. **构建 HTML 骨架**：
   - Hero 区（孙中山名言 + 核心价值主张）
   - 方法论导航区（四层体系展示）
   - 十大方法论卡片区
   - 安装使用区
   - Footer
3. **实现 CSS 样式**：响应式、动画、交互细节
4. **实现 JS 交互**：平滑滚动、卡片悬停、导航逻辑
5. **创建部署 workflow**：`.github/workflows/pages.yml`
6. **本地验证**：浏览器打开确认效果
7. **提交代码**：推送后 GitHub Pages 自动部署

## 设计规范

### 配色方案（中山纪念堂色调）

```
--color-primary:     #1a5f7a   /* 宝蓝（琉璃瓦主色）*/
--color-secondary:   #c0392b   /* 朱红（柱/门窗）*/
--color-accent:     #d4a017   /* 金色（攒顶）*/
--color-bg-light:   #faf6f0   /* 米黄（墙体）*/
--color-bg-dark:    #1c1c1c   /* 深灰（现代底色）*/
--color-text:       #2c2c2c   /* 深灰文字 */
--color-text-muted: #6b6b6b   /* 辅助文字 */
```

### 字体

- 中文标题：思源宋体（Noto Serif SC）或系统宋体
- 英文/数字：Playfair Display（典雅）
- 正文：思源黑体（Noto Sans SC）

### 页面结构

1. **Header** — Logo + 导航（首页 / 方法论 / 安装 / 关于）
2. **Hero** — 大幅背景，孙中山名言「天下为公」，一句话价值主张
3. **体系概览** — 四层方法论金字塔图示
4. **十大方法论** — 10 张卡片，hover 展开简介
5. **安装区** — 一键安装命令（Claude Code / OpenClaw）
6. **Footer** — 项目信息、红线声明、License

## ✅ 验收标准

- [ ] `docs/index.html` 存在且结构完整（Header/Hero/体系/方法论/安装/Footer）
- [ ] CSS 样式完整，响应式布局（PC + 移动端）
- [ ] JS 交互正常（平滑滚动、悬停效果）
- [ ] 配色符合中山纪念堂色调（宝蓝 + 朱红 + 米黄 + 金色）
- [ ] `.github/workflows/pages.yml` 存在且配置正确
- [ ] 本地浏览器打开效果正常
- [ ] 提交到 GitHub 后 GitHub Pages 成功部署

## 🔀 依赖任务

无

## 📝 备注

- GitHub Pages 部署 source 选择 `gh-pages` 分支或 `docs/` 目录
- 使用纯 HTML/CSS/JS，不依赖框架，确保加载速度
- 所有外部资源（字体等）使用 CDN 或内联，减少依赖
- 方法论卡片内容直接复用 `skills/*/SKILL.md` 里的描述
