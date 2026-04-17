# 测试说明

## 测试文件

| 文件 | 说明 | 支持环境 |
|------|------|----------|
| `validate-structure.sh` | Bash 版结构验证脚本 | Linux / macOS |
| `validate-structure.ps1` | PowerShell 版结构验证脚本 | Windows PowerShell 5.1+ / PowerShell Core (pwsh) |

## 本地手动测试

### Linux / macOS

```bash
cd /path/to/datong-skill
bash tests/validate-structure.sh
```

### Windows (PowerShell)

```powershell
cd C:\path\to\datong-skill
pwsh -NoProfile -ExecutionPolicy Bypass -File tests\validate-structure.ps1
# 或在 PowerShell 5.1 中：
powershell -ExecutionPolicy Bypass -File tests\validate-structure.ps1
```

### Windows (CMD)

```cmd
cd C:\path\to\datong-skill
call hooks\run-hook.cmd session-start
```

## CI 自动测试

所有测试在 GitHub Actions 中自动运行，无需手动干预：

| Job | Runner | 触发方式 |
|-----|--------|----------|
| `validate-ubuntu` | ubuntu-latest | push / PR |
| `validate-macos` | macos-latest | push / PR |
| `validate-windows` | windows-latest | push / PR |
| `json-validate` | ubuntu-latest | push / PR |

### 验证内容

脚本检查以下内容：

1. **必需文件存在性**（package.json, LICENSE, README.md 等）
2. **10 个核心 Skill 完整性**（每个 skill 有 SKILL.md + original-texts.md）
3. **YAML frontmatter**（每个 SKILL.md 以 `---` 开头）
4. **Windows Hook 脚本**（session-start.ps1, run-hook.cmd）

## 常见问题

**Q: Windows 上执行策略阻止脚本运行？**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# 或使用 -ExecutionPolicy Bypass 临时绕过
```

**Q: `pwsh` 命令找不到？**
确保已安装 [PowerShell Core](https://github.com/PowerShell/PowerShell/releases)。Windows PowerShell 5.1 也可运行，但推荐使用 pwsh 获取最佳兼容性。

**Q: 路径分隔符问题？**
脚本内部已处理 Windows 路径（`\`）和 Unix 路径（`/`）的兼容性。
