# TASK_windows-testing - Windows Hook 验证

**状态**：📋待办

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

- [ ] `session-start.ps1` 在 Windows PowerShell 5.1+ 环境运行无报错
- [ ] `run-hook.cmd` 在 Windows CMD 环境运行无报错
- [ ] `tests/validate-structure.ps1` 存在且能正确检测目录结构
- [ ] GitHub Actions Windows job 通过
- [ ] `tests/README.md` 存在，包含 Windows 手动测试说明

## 🔀 依赖任务

- TASK_github-workflow（CI 需先建立）

## 📝 备注

- 当前只有 macOS/Linux 的 `bash tests/validate-structure.sh`，Windows 侧尚未实际测试
- 可使用 GitHub Actions 的 `windows-latest` runner 进行自动化测试
- 测试重点：路径分隔符（`\` vs `/`）、换行符（CRLF vs LF）、PowerShell 执行策略
