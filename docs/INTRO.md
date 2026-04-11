# 大同 Skill（datong-skill）—— 项目介绍

> "天下为公" —— 孙中山

## 项目定位

**datong-skill** 是一个 AI Agent Skills 合集，从孙中山先生四十年革命生涯中蒸馏出方法论智慧，系统性地提升 AI 的分析力、设计力和韧性。

- **不是**政治教育素材，而是可操作的思维工具箱
- **不是**口号鸡汤，而是有据可依的方法论
- **不是**全套调用教条，而是按需使用的独立工具

## 核心内容

| 类别 | 内容 |
|------|------|
| 入口 Skill | `tianxia-weigong`（天下为公）—— 路由 + 总原则 + 红线约束 |
| 方法论 Skills | 10 个，涵盖认识论、治理方法、革命战略、精神纪律四层 |
| 工作流 | 3 个标准端到端工作流（系统设计评审 / 变革推进 / 危机应对）|
| 辅助命令 | 3 个手动 slash commands |
| Subagent | 五权审查 agent prompt |
| 插件支持 | Claude Code / Cursor / OpenClaw |

## 方法论体系

```
精神底色：天下为公 · 博爱
    ↓
总原则：知行合一
    ↓
第一层 认识论：     知难行易 · 融贯中西
第二层 治理方法：   三民框架 · 五权制衡 · 权能区分
第三层 革命战略：   唤起民众 · 毕其功于一役 · 三阶段推进
第四层 精神纪律：   愈挫愈奋 · 济弱扶倾
```

详见：[方法论概览](./method-overview.md)

## 项目结构

```
datong-skill/
├── skills/
│   ├── tianxia-weigong/          # 入口 Skill
│   ├── know-hard-act-easy/       # 知难行易
│   ├── east-west-synthesis/       # 融贯中西
│   ├── three-principles-analysis/ # 三民框架
│   ├── five-power-checks/        # 五权制衡
│   ├── power-capability-split/    # 权能区分
│   ├── awaken-and-unite/          # 唤起民众
│   ├── single-stroke-revolution/  # 毕其功于一役
│   ├── three-phase-governance/    # 三阶段推进
│   ├── rise-from-defeat/          # 愈挫愈奋
│   ├── aid-the-weak/             # 济弱扶倾
│   └── workflows/                # 工作流组合
├── commands/                     # 手动命令入口
├── hooks/                        # Session 注入
├── agents/                       # Subagent prompts
├── tests/                        # 验证脚本
├── docs/                         # 项目文档
├── .claude-plugin/              # Claude Code 插件
├── .cursor-plugin/              # Cursor 插件
├── package.json
├── CHANGELOG.md
├── LICENSE
└── README.md
```

## 快速安装

### Claude Code

```bash
git clone https://github.com/EASYGOING45/datong-skill
cd datong-skill
claude --plugin-dir .
```

### OpenClaw

将 `skills/tianxia-weigong/SKILL.md` 作为 system prompt 注入，或通过 ClawHub 安装。

## 红线声明

本项目严格遵守以下边界，任何贡献和修改都不得逾越：

- **纯方法论蒸馏** —— 不涉及任何政治立场、政党评价或制度优劣比较
- **尊重历史、实事求是** —— 引用原文标注出处，不曲解、不断章取义
- **面向 AI 工作场景** —— 适用场景限定在软件工程、系统设计、团队协作等 AI Agent 工作领域

## 当前版本

- **版本号**：v0.1.0
- **发布日期**：2025-04-09
- **维护者**：EASYGOING45
- **状态**：功能完整，已可用

## 维护记录

- 2025-04-09：v0.1.0 首次发布，10 个核心方法论 skill + 3 个工作流 + 完整安装体系
- 2026-04-11：菲比接手维护，建立任务卡体系，梳理待推进方向
