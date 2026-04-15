# TASK_github-workflow - GitHub Actions CI/CD 自动化验证

**状态**：✅已完成

> 完成时间：2026-04-15

**创建时间**：2026-04-11 17:30

---

## 🎯 任务目标

建立 GitHub Actions 工作流，实现：
1. 每次 PR / push 自动运行结构验证（macOS/Linux + Windows）
2. 自动检查 SKILL.md 的 YAML frontmatter 是否完整
3. 自动检查 JSON 配置文件格式是否正确

## 📦 涉及文件

- `.github/workflows/ci.yml` - 主 CI 工作流（新建）
- `.github/workflows/validate.sh` - Linux/macOS 验证脚本增强（可复用 `tests/validate-structure.sh`）
- `tests/validate-structure.sh` - 现有验证脚本（可能需小幅修改以适配 CI 环境）

## 📋 执行步骤

1. 设计 CI 工作流矩阵：macOS / Ubuntu / Windows 三个环境并行
2. 创建 `.github/workflows/ci.yml`
3. 配置触发条件：`push`（所有分支）+ `pull_request`（所有分支）
4. CI 步骤：
   - 克隆代码
   - 运行结构验证（Linux/macOS 用 bash，Windows 用 PowerShell）
   - 检查 JSON 配置文件格式（`hooks/hooks.json`、`package.json` 等）
   - 检查 YAML frontmatter（可用 Python 脚本或 `yamllint`）
5. 配置 CI badge 在 README.md 显示
6. 首次 push 验证 CI 能正常运行

## ✅ 验收标准

- [ ] `.github/workflows/ci.yml` 存在且格式正确
- [ ] CI 在 macOS / Ubuntu / Windows 三个平台都能正常运行
- [ ] 每次 push/PR 触发 CI 并生成构建状态
- [ ] README.md 包含 CI badge
- [ ] 无 JSON 配置文件的语法错误
- [ ] 所有 SKILL.md 的 YAML frontmatter 格式正确

## 🔀 依赖任务

无（可独立进行，但可与 TASK_windows-testing 合并推进）

## 📝 备注

- `yamllint` 可在 CI 中通过 `pip install yamllint` 安装
- JSON 验证可用 `python -m json.tool` 或 `jq`
- Windows runner 测试可覆盖 TASK_windows-testing 的自动化部分
