#!/usr/bin/env pwsh
# validate-structure.ps1 - Windows PowerShell 版项目结构验证脚本
# 等价于 bash 版 tests/validate-structure.sh
# 支持: PowerShell 5.1+ / PowerShell Core (pwsh)

[CmdletBinding()]
param(
    [string]$ProjectRoot
)

$ErrorActionPreference = 'Continue'
$script:ERRORS = 0

if ([string]::IsNullOrEmpty($ProjectRoot)) {
    $ScriptDir = $PSScriptRoot
    if ([string]::IsNullOrEmpty($ScriptDir)) {
        $ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
    }
    # Script lives in tests/, so parent is the repo root
    $ProjectRoot = Split-Path -Parent $ScriptDir
}

function Test-FileOrDir {
    param([string]$Path)
    if (-not (Test-Path $Path -PathType Any)) {
        Write-Host "  MISSING: $Path"
        $script:ERRORS++
        return $false
    }
    Write-Host "  OK: $Path"
    return $true
}

Write-Host "=== 大同 Skill 结构验证 (PowerShell) ===" -ForegroundColor Cyan
Write-Host ""

# 检查必需文件
$RequiredFiles = @(
    "package.json",
    "LICENSE",
    "README.md",
    "CHANGELOG.md",
    "PLAN.md",
    ".gitignore",
    "hooks/hooks.json",
    ".claude-plugin/plugin.json",
    ".cursor-plugin/plugin.json",
    "skills/tianxia-weigong/SKILL.md",
    "skills/workflows/SKILL.md",
    "agents/five-power-reviewer.md"
)

Write-Host "[1/3] 检查必需文件..." -ForegroundColor Yellow
foreach ($f in $RequiredFiles) {
    $fullPath = Join-Path $ProjectRoot $f
    Test-FileOrDir $fullPath
}

# 检查 10 个核心 Skill
$Skills = @(
    "know-hard-act-easy",
    "east-west-synthesis",
    "three-principles-analysis",
    "five-power-checks",
    "power-capability-split",
    "awaken-and-unite",
    "single-stroke-revolution",
    "three-phase-governance",
    "rise-from-defeat",
    "aid-the-weak"
)

Write-Host ""
Write-Host "[2/3] 检查核心 Skills..." -ForegroundColor Yellow
foreach ($s in $Skills) {
    $skPath = Join-Path $ProjectRoot "skills/$s/SKILL.md"
    Test-FileOrDir $skPath
    $origPath = Join-Path $ProjectRoot "skills/$s/original-texts.md"
    Test-FileOrDir $origPath
}

# 检查 YAML frontmatter
Write-Host ""
Write-Host "[3/3] 检查 YAML frontmatter..." -ForegroundColor Yellow
$AllSkills = @("tianxia-weigong", "workflows") + $Skills
foreach ($s in $AllSkills) {
    $skFile = Join-Path $ProjectRoot "skills/$s/SKILL.md"
    if (Test-Path $skFile -PathType Leaf) {
        $firstLine = (Get-Content $skFile -TotalCount 1 -ErrorAction SilentlyContinue)
        if ($firstLine -match '^---') {
            Write-Host "  OK: skills/$s/SKILL.md has frontmatter"
        } else {
            Write-Host "  WARN: skills/$s/SKILL.md missing YAML frontmatter" -ForegroundColor Magenta
        }
    }
}

# Windows 特有检查
Write-Host ""
Write-Host "[Win] Windows 特有检查..." -ForegroundColor Yellow
$winHook1 = Join-Path $ProjectRoot "hooks/session-start.ps1"
Test-FileOrDir $winHook1
$winHook2 = Join-Path $ProjectRoot "hooks/run-hook.cmd"
Test-FileOrDir $winHook2

Write-Host ""
Write-Host "=== 验证完成 ===" -ForegroundColor Cyan
if ($script:ERRORS -eq 0) {
    Write-Host "所有检查通过！" -ForegroundColor Green
    exit 0
} else {
    Write-Host "发现 $($script:ERRORS) 个问题" -ForegroundColor Red
    exit 1
}
