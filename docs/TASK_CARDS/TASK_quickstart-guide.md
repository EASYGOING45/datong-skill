# TASK_quickstart-guide - 快速上手指南

**状态**：📋待办

**创建时间**：2026-04-11 17:30

---

## 🎯 任务目标

编写一份简洁的「5 分钟快速上手指南」，让新用户能在 5 分钟内理解 datong-skill 的价值并开始使用。降低认知门槛，明确告诉用户「遇到什么问题时应该用哪个 skill」。

## 📦 涉及文件

- `docs/QUICKSTART.md` - 快速上手指南（新建）
- `README.md` - 在顶部增加「想快速上手？→ docs/QUICKSTART.md」指向（需修改）
- `skills/tianxia-weigong/SKILL.md` - 入口 skill（已存在，参考路由表）

## 📋 执行步骤

1. 梳理目标用户画像：主要是 AI Agent 用户（Claude Code / Cursor / OpenClaw）
2. 设计上手路径：
   - Step 1：安装（1 分钟，一条命令）
   - Step 2：理解你能获得什么（2 分钟，场景→方法论映射表）
   - Step 3：第一次使用（2 分钟，一个具体例子演示）
3. 撰写 `docs/QUICKSTART.md`
4. 在 README.md 顶部增加快速上手入口链接
5. 自审：给一个不懂方法论的同事看，能否在 5 分钟内理解并安装？

## ✅ 验收标准

- [ ] `docs/QUICKSTART.md` 存在
- [ ] 内容包含：安装命令（≤3 行）、场景→方法论速查表（10 个场景）、一个完整使用示例
- [ ] 自审通过：让一个不了解 datong-skill 的人阅读后能独立完成安装和使用
- [ ] README.md 顶部有指向 QUICKSTART.md 的链接

## 🔀 依赖任务

无（可独立进行）

## 📝 备注

- 参考「求是 skill」 quickstart 的写作风格：简洁、口语化、直击价值
- 场景→方法论速查表是核心，格式建议：`| 场景 | 方法论 | 一句话为什么用它 |`
- 使用示例建议用「我遇到了XXX」→「用 datong-skill 我这样分析」→「结果」
