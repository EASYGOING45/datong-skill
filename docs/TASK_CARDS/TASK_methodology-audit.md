# TASK_methodology-audit — 各 Skill 自审清单

**状态**：✅已完成（2026-04-28）

**创建时间**：2026-04-27 13:35 CST

---

## 🎯 任务目标

为 datong-skill 的 10 个核心方法论 skill 逐一编写自审清单（self-review checklist），用于：
1. 快速定位每个 skill 的缺失项
2. 在发布前做全面质量把关
3. 方便后续维护和迭代

## 📦 涉及文件

每个 skill 目录下新增：
- `<skill-name>-self-review.md` — 自审清单

具体涉及：
- `skills/know-hard-act-easy/know-hard-act-easy-self-review.md`
- `skills/east-west-synthesis/east-west-synthesis-self-review.md`
- `skills/three-principles-analysis/three-principles-analysis-self-review.md`
- `skills/five-power-checks/five-power-checks-self-review.md`
- `skills/power-capability-split/power-capability-split-self-review.md`
- `skills/awaken-and-unite/awaken-and-unite-self-review.md`
- `skills/single-stroke-revolution/single-stroke-revolution-self-review.md`
- `skills/three-phase-governance/three-phase-governance-self-review.md`
- `skills/rise-from-defeat/rise-from-defeat-self-review.md`
- `skills/aid-the-weak/aid-the-weak-self-review.md`

## 自审清单统一格式

```markdown
# [Skill名] 自审清单

## ✅ 引用核查
- [ ] 核心原文引用已标注出处（篇名 + 年份）
- [ ] 引用内容与原文一致，无断章取义

## ✅ 方法论核查
- [ ] 核心要义清晰，用一句话能说清楚
- [ ] 操作步骤完整，step-by-step 可执行
- [ ] 适用场景和不适用场景都明确列出

## ✅ 格式核查
- [ ] 有 YAML frontmatter（name + description）
- [ ] 无 AI 味模板腔语言
- [ ] 语气自然，菲比可读

## ✅ 红线核查
- [ ] 不涉及任何政治立场、政党评价
- [ ] 不涉及两岸关系、政权更迭等敏感议题
- [ ] 面向 AI 工作场景，无延伸解读

## ✅ 实用性核查
- [ ] <skill>-decision-tree.md 存在且清晰
- [ ] <skill>-template.md 存在且可直接使用
- [ ] 与其他 skill 的组合建议已写明

## ✅ 完整性核查
- [ ] original-texts.md 存在且标注完整
- [ ] SKILL.md 字数适中（300-800 字为宜）
```

## ✅ 验收标准

- [x] 10 个方法论 skill 全部有对应的 self-review.md
- [x] 自审清单格式统一（6 大类核查项）
- [x] 自审执行完成，checklist 全部打勾
- [x] 发现的问题已修复并有更新记录

## 📋 执行记录

| 日期 | 推进内容 | 状态 |
|------|---------|------|
| 2026-04-27 | 为 10 个核心 skill 创建 self-review.md 框架（6 大核查类） | ✅ |
| 2026-04-27 | 逐个执行自审，修复发现的问题 | ✅ |
| 2026-04-28 | 自审修复 commit 推送（红线声明 + checklist 全部打勾） | ✅ |

## 📝 备注

- 自审清单本身是"方法论的方法论"——用孙中山先生的方法论来审查孙中山先生方法论的文档
- 这是 v0.2.0 的倒数第二个任务（倒数第一是 publish-clawhub）
