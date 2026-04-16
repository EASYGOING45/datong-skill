# OpenClaw 使用指南

本文档说明如何在 OpenClaw 中安装、配置和使用「大同Skill」。

---

## 安装方式

### 方式一：ClawHub 安装（推荐，等效 npm install）

```bash
# 安装最新版本
clawhub install datong-skill

# 或安装到指定目录（默认安装到 openclaw 配置的 skills 目录）
clawhub install datong-skill --workdir /path/to/your/workspace
```

安装后重启 OpenClaw，skill 即自动可用。

---

### 方式二：直接从 GitHub 加载

OpenClaw 支持直接从 GitHub URL 加载 skill，无需发布到 ClawHub：

```json
// 在你的 OpenClaw 配置中添加
{
  "skills": [
    "https://github.com/EASYGOING45/datong-skill/tree/main/skills/tianxia-weigong"
  ]
}
```

或在工作区 `skills/` 目录手动克隆：

```bash
git clone https://github.com/EASYGOING45/datong-skill.git /path/to/workspace/skills/datong-skill
```

---

## Skill 索引

| Skill | 文件 | 核心功能 |
|-------|------|---------|
| **天下为公（总入口）** | `skills/tianxia-weigong/SKILL.md` | 自动路由到最适合的方法论 |
| 知难行易 | `skills/know-hard-act-easy/SKILL.md` | 先行动获取信息，不等完美方案 |
| 融贯中西 | `skills/east-west-synthesis/SKILL.md` | 深入理解多个框架后取长融合 |
| 三民框架 | `skills/three-principles-analysis/SKILL.md` | 谁创建、谁治理、谁受益 |
| 五权制衡 | `skills/five-power-checks/SKILL.md` | 执行/规划/验证/选拔/监察五权分离 |
| 权能区分 | `skills/power-capability-split/SKILL.md` | 决策权归用户，执行力归 agent |
| 唤起民众 | `skills/awaken-and-unite/SKILL.md` | 唤起相关方，建立联盟 |
| 毕其功于一役 | `skills/single-stroke-revolution/SKILL.md` | 系统性解决，不做枝节修补 |
| 三阶段推进 | `skills/three-phase-governance/SKILL.md` | 破旧 → 培育 → 自治 |
| 愈挫愈奋 | `skills/rise-from-defeat/SKILL.md` | 失败后总结，重新出发 |
| 济弱扶倾 | `skills/aid-the-weak/SKILL.md` | 为最弱势用户设计 |

---

## 快速使用

### 通过总入口路由

当你不确定该用哪个方法论时，直接调用总入口：

```
菲比，我需要做一个复杂的技术选型决策，但团队意见不统一，而且之前已经失败过两次了。
```

总入口会根据你的场景描述，自动路由到最合适的方法论（如「知难行易」→「融贯中西」→「愈挫愈奋」的组合）。

### 直接调用单个 skill

```
菲比，用三民框架帮我审视这个系统设计的完整性。
```

```
菲比，用五权制衡的方法检查一下我们的协作机制。
```

---

## 触发方式

在 OpenClaw 中，符合以下任一场景时，skill 会自动被推荐使用：

| 场景关键词 | 路由到 |
|-----------|--------|
| 犹豫不决、分析瘫痪、不知道该怎么做 | 知难行易 |
| 多个框架/方案需要选择和融合 | 融贯中西 |
| 系统设计、API 设计、架构审视 | 三民框架 |
| 权限分配、角色分工、check & balance | 五权制衡 |
| 用户 vs agent 决策边界不清 | 权能区分 |
| 需要争取跨团队支持、建立联盟 | 唤起民众 |
| 问题太多需要一次性系统解决 | 毕其功于一役 |
| 变革需要分阶段推进 | 三阶段推进 |
| 方案被否、失败、低谷期 | 愈挫愈奋 |
| 设计忽略了某些弱势用户群体 | 济弱扶倾 |

---

## 常见组合

**新项目启动**：三民框架 → 权能区分 → 五权制衡  
**方案被否后重振**：愈挫愈奋 → 融贯中西 → 知难行易  
**大规模变革推进**：唤起民众 → 三阶段推进 → 五权制衡  
**技术选型**：知难行易 → 融贯中西 → 三民框架  
**用户权益审视**：济弱扶倾 → 三民框架 → 五权制衡

---

## 文件结构

```
datong-skill/
├── skills/
│   ├── tianxia-weigong/        # 总入口
│   ├── know-hard-act-easy/     # 知难行易
│   ├── east-west-synthesis/    # 融贯中西
│   ├── three-principles-analysis/  # 三民框架
│   ├── five-power-checks/      # 五权制衡
│   ├── power-capability-split/ # 权能区分
│   ├── awaken-and-unite/       # 唤起民众
│   ├── single-stroke-revolution/   # 毕其功于一役
│   ├── three-phase-governance/ # 三阶段推进
│   ├── rise-from-defeat/       # 愈挫愈奋
│   ├── aid-the-weak/           # 济弱扶倾
│   └── workflows/              # 组合工作流
├── hooks/                      # OpenClaw SessionStart Hooks
├── commands/                   # CLI 命令
├── agents/                     # Agent 配置
└── docs/
    ├── OPENCLAW_USAGE.md       # 本文档
    ├── QUICKSTART.md           # 5分钟快速上手
    └── method-overview.md      # 方法论概览
```

---

## 依赖与前提

- OpenClaw v0.9.0+
- 对话语言：中文（默认）、英文（可用）
- 不需要任何外部 API key

---

## 反馈与贡献

- Issue：https://github.com/EASYGOING45/datong-skill/issues
- PR：欢迎提交改进建议和方法论补充
