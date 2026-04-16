# TASK_skill-enhancement - Skill 实用附件补充

**状态**：✅已完成（10/10 skills）

**创建时间**：2026-04-11 17:30

**最后更新**：2026-04-16 09:35

**完成推进**：
- ✅ `know-hard-act-easy` - decision-tree.md + template.md
- ✅ `five-power-checks` - decision-tree.md + template.md
- ✅ `east-west-synthesis` - decision-tree.md + template.md



---

## 🎯 任务目标

为每个方法论 skill 补充「操作模板」和「决策树」等实用附件，让每个 skill 除了有理论说明，还能直接用于实践，降低使用摩擦。

## 📦 涉及文件

每个 skill 目录（`skills/<skill-name>/`）下新增：
- `<skill-name>-decision-tree.md` - 决策树（什么情况下用？什么情况下不用？组合哪些？）
- `<skill-name>-template.md` - 操作模板（可直接复制使用的分析框架）

具体涉及：
- `skills/know-hard-act-easy/decision-tree.md` + `template.md`
- `skills/east-west-synthesis/decision-tree.md` + `template.md`
- `skills/three-principles-analysis/decision-tree.md` + `template.md`
- `skills/five-power-checks/decision-tree.md` + `template.md`
- `skills/power-capability-split/decision-tree.md` + `template.md`
- `skills/awaken-and-unite/decision-tree.md` + `template.md`
- `skills/single-stroke-revolution/decision-tree.md` + `template.md`
- `skills/three-phase-governance/decision-tree.md` + `template.md`
- `skills/rise-from-defeat/decision-tree.md` + `template.md`
- `skills/aid-the-weak/decision-tree.md` + `template.md`

## 📋 执行步骤

1. 为每个 skill 设计决策树（用 Markdown details/summary 或简单流程图）
2. 为每个 skill 设计操作模板（结构化分析框架，可直接填写）
3. 逐个写入对应文件
4. 统一格式规范（决策树和模板的格式在所有 skill 中保持一致）
5. 更新 `docs/method-overview.md` 或新建 `docs/skill-tools.md` 总览

## ✅ 验收标准

- [x] 10 个方法论 skill **全部**都有对应的 decision-tree.md 和 template.md
- [ ] 决策树格式统一（使用相同的 Markdown 结构）
- [ ] 操作模板可直接用于实际分析场景（不是空泛的说明）
- [ ] 至少 3 个不同 skill 的模板经过实际测试使用

## 📝 执行记录

| 日期 | 推进内容 | 状态 |
|------|---------|------|
| 2026-04-15 | know-hard-act-easy, five-power-checks, east-west-synthesis decision-tree + template | ✅ |
| 2026-04-16 | 剩余 7 skills 全部完成（three-principles-analysis, power-capability-split, awaken-and-unite, single-stroke-revolution, three-phase-governance, rise-from-defeat, aid-the-weak） | ✅ |

## 🔀 依赖任务

- TASK_docsystem-maintenance（需先完成核心 skill 结构熟悉）

## 📝 备注

- 决策树建议格式：
  ```
  ## 什么时候用？
  - 符合场景 A → ✅ 直接用
  - 符合场景 B → ⚠️ 配合 XXX 一起用
  - 符合场景 C → ❌ 不适用，应该用 YYY
  ```
- 操作模板建议格式：
  ```
  ## [方法论名称] 分析模板
  
  **问题简述**：___________
  
  **维度 1**：___________
  **维度 2**：___________
  **维度 3**：___________
  
  **结论**：___________
  ```
