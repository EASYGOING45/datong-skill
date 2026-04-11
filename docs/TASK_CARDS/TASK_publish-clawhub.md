# TASK_publish-clawhub - ClawHub 发布

**状态**：📋待办

**创建时间**：2026-04-11 17:30

---

## 🎯 任务目标

将 datong-skill 发布到 ClawHub（https://clawhub.ai），使 OpenClaw 用户可以通过 `clawhub install datong-skill` 一键安装。

## 📦 涉及文件

- `clawhub.json` - ClawHub 发布元数据（需创建，参考 TASK_openclaw-integration）
- `.clawhub/metadata.json` - 发布配置（需研究格式）
- `README.md` - 增加 ClawHub 安装章节（需修改）
- `.github/workflows/ci.yml` - CI 工作流（可能需要先完成）

## 📋 执行步骤

1. 研究 ClawHub 发布要求：
   - 查看 clawhub.com 的发布流程和元数据格式
   - 查看已发布 skill 的 metadata 格式（如 superpowers）
   - 确认 `clawhub.json` 所需字段
2. 准备发布元数据：
   - 撰写简洁有力的 skill 描述（≤200 字符）
   - 选择合适的 tags（3-5 个）
   - 确认截图/icon 是否需要
3. 在 clawhub.com 创建 datong-skill 发布页面
4. 本地测试 `clawhub install` 命令能否成功安装
5. 更新 README.md 增加 ClawHub 安装说明
6. 首次发布确认后通知相关用户

## ✅ 验收标准

- [ ] `clawhub.json` 或等价元数据文件存在且格式正确
- [ ] clawhub.ai 上 datong-skill 页面已创建并可访问
- [ ] `clawhub install datong-skill` 命令能成功安装（本地测试）
- [ ] README.md 包含 ClawHub 安装命令

## 🔀 依赖任务

- TASK_openclaw-integration（需先有 OpenClaw 安装支持）
- TASK_github-workflow（CI 是加分项，不是必须）

## 📝 备注

- ClawHub 是 OpenClaw 的官方 Skill 市场，类似 npm之于 Node.js
- 如果 clawhub.com 不支持直接发布，需通过 `clawhub publish` CLI 命令发布
- 发布前确保 README.md 和 SKILL.md 内容专业、无错误
- 参考已发布 skill：查看 `~/.nvm/versions/node/v25.7.0/lib/node_modules/openclaw/skills/` 下的 metadata
