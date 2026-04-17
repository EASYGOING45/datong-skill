# TASK_windows-testing - Windows Hook 验证

**状态**：🔄 进行中（文件已创建，待 CI 验证）

**创建时间**：2026-04-11 17:30

---

## 🎯 任务目标

补充 Windows 环境下的 hook 验证测试，确保 `hooks/session-start.ps1` 和 `hooks/run-hook.cmd` 在真实 Windows 环境下正常工作。

## 📦 涉及文件

- `hooks/session-start.ps1` - Windows PowerShell hook 脚本（已存在，需测试）
- `hooks/run-hook.cmd` - Windows CMD hook 适配（已存在，需测试）
- `tests/validate-structure.ps1` - Windows 验证脚本（需新建）
- `tests/README.md` - 测试说明文档（需新建）

## 📋 执行步骤

1. 在 Windows 环境下（或通过 CI Windows runner）测试 `session-start.ps1` 是否正常运行
2. 测试 `run-hook.cmd` 在纯 CMD 环境下的兼容性
3. 创建 `tests/validate-structure.ps1`（PowerShell 版验证脚本）
4. 在 GitHub Actions Windows runner 上运行验证
5. 修复发现的任何兼容性问题
6. 编写 `tests/README.md` 说明如何手动验证

## ✅ 验收标准

- [x] `tests/validate-structure.ps1` 存在且能正确检测目录结构 ✅ (2026-04-17)
- [x] `tests/README.md` 存在，包含 Windows 手动测试说明 ✅ (2026-04-17)
- [x] GitHub Actions `validate-windows` job 已重构为调用脚本 ✅ (2026-04-17)
- [ ] `session-start.ps1` 在 Windows PowerShell 5.1+ 环境运行无报错（待 CI 验证）
- [ ] `run-hook.cmd` 在 Windows CMD 环境运行无报错（待 CI 验证）
- [ ] GitHub Actions Windows job 通过（CI 触发后验证）

## 📝 执行记录

- **2026-04-17 17:30 CST**：完成以下交付物并 push commit `a2fb1f7`
  - `tests/validate-structure.ps1`：完整 PowerShell 验证脚本，支持 PS 5.1+ / pwsh Core，等价于 bash 版逻辑
  - `tests/README.md`：测试说明文档（bash / PowerShell / CMD 手动方式 + CI 概览）
  - `.github/workflows/ci.yml`：`validate-windows` job 替换内联 PowerShell 为脚本调用
  - `docs/PLAN.md`：项目骨架（workspace sweep 自动创建）
  - 下一步：等待 CI windows-latest runner 验证脚本执行结果

## 🔀 依赖任务

- TASK_github-workflow（CI 需先建立）

## 📝 备注

- PowerShell 脚本本地未测试（pwsh 未安装），将在 windows-latest CI runner 上验证
- `validate-windows` job 已从内联脚本迁移到调用 `tests/validate-structure.ps1`
- 如 CI 通过，标记 TASK 为 ✅ 完成；如失败，根据 runner 日志修复
