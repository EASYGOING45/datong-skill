# TASK_openclaw-integration - OpenClaw Skill 安装支持

**状态**：📋待办

**创建时间**：2026-04-11 17:30

---

## 🎯 任务目标

为 datong-skill 增加明确的 OpenClaw Skill 安装和使用说明，包括：
1. ClawHub 发布准备（clawhub.json / skill.json）
2. 直接加载 `SKILL.md` 的使用说明（通过 `--skills-dir` 或 workspace 配置）
3. 在 README.md 中增加 OpenClaw 安装章节

## 📦 涉及文件

- `README.md` - 增加 OpenClaw 安装章节（需修改）
- `.openclaw/skills/datong-skill/` - OpenClaw skill 格式（需新建）
  - `SKILL.md` → 链接到 `skills/tianxia-weigong/SKILL.md`
  - `skill.json` - 元数据配置
- `clawhub.json` - ClawHub 发布配置（需新建）
- `docs/openclaw-usage.md` - 详细使用说明文档（需新建）

## 📋 执行步骤

1. 研究 OpenClaw Skill 格式要求（参考已安装的 skill 如 `superpowers`、`brainstorming`）
2. 创建 `.openclaw/skills/datong-skill/skill.json` 元数据文件
3. 创建 `clawhub.json` ClawHub 发布配置
4. 在 `README.md` 增加 OpenClaw 安装章节
5. 编写 `docs/openclaw-usage.md` 详细使用说明
6. 本地测试 skill 是否能被 OpenClaw 正确识别

## ✅ 验收标准

- [ ] `clawhub.json` 存在且格式正确（name、description、tags、skills[] 等字段）
- [ ] `.openclaw/skills/datong-skill/skill.json` 存在且包含正确的 skill 入口路径
- [ ] `README.md` 包含 OpenClaw 安装章节（安装命令 + 使用说明）
- [ ] `docs/openclaw-usage.md` 存在且内容完整（安装、配置、使用示例）
- [ ] 本地测试：OpenClaw 能识别并加载 datong-skill

## 🔀 依赖任务

- TASK_publish-clawhub（发布到 ClawHub）可选先做

## 📝 备注

- OpenClaw skill 格式参考路径：`~/.nvm/versions/node/v25.7.0/lib/node_modules/openclaw/skills/` 或 workspace 内置 skills
- 如果 OpenClaw 支持直接引用 GitHub URL，可以先不做 clawhub 发布
- 参考 skill：`brainstorming` 的目录结构和 `skill.json`
