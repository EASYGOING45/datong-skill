#!/bin/bash
# 验证 datong-skill 项目结构完整性

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ERRORS=0

echo "=== 大同 Skill 结构验证 ==="
echo ""

# 检查必需文件
REQUIRED_FILES=(
  "package.json"
  "LICENSE"
  "README.md"
  "CHANGELOG.md"
  "PLAN.md"
  ".gitignore"
  "hooks/hooks.json"
  ".claude-plugin/plugin.json"
  ".cursor-plugin/plugin.json"
  "skills/tianxia-weigong/SKILL.md"
  "skills/workflows/SKILL.md"
  "agents/five-power-reviewer.md"
)

echo "[1/3] 检查必需文件..."
for f in "${REQUIRED_FILES[@]}"; do
  if [ ! -f "$SCRIPT_DIR/$f" ]; then
    echo "  MISSING: $f"
    ERRORS=$((ERRORS + 1))
  else
    echo "  OK: $f"
  fi
done

# 检查 10 个核心 skill
SKILLS=(
  "know-hard-act-easy"
  "east-west-synthesis"
  "three-principles-analysis"
  "five-power-checks"
  "power-capability-split"
  "awaken-and-unite"
  "single-stroke-revolution"
  "three-phase-governance"
  "rise-from-defeat"
  "aid-the-weak"
)

echo ""
echo "[2/3] 检查核心 Skills..."
for s in "${SKILLS[@]}"; do
  if [ ! -f "$SCRIPT_DIR/skills/$s/SKILL.md" ]; then
    echo "  MISSING: skills/$s/SKILL.md"
    ERRORS=$((ERRORS + 1))
  else
    echo "  OK: skills/$s/SKILL.md"
  fi
  if [ ! -f "$SCRIPT_DIR/skills/$s/original-texts.md" ]; then
    echo "  MISSING: skills/$s/original-texts.md"
    ERRORS=$((ERRORS + 1))
  else
    echo "  OK: skills/$s/original-texts.md"
  fi
done

# 检查 SKILL.md 包含 YAML frontmatter
echo ""
echo "[3/3] 检查 YAML frontmatter..."
for s in "${SKILLS[@]}" "tianxia-weigong" "workflows"; do
  SKILL_FILE="$SCRIPT_DIR/skills/$s/SKILL.md"
  if [ -f "$SKILL_FILE" ]; then
    if head -1 "$SKILL_FILE" | grep -q "^---"; then
      echo "  OK: skills/$s/SKILL.md has frontmatter"
    else
      echo "  WARN: skills/$s/SKILL.md missing YAML frontmatter"
      ERRORS=$((ERRORS + 1))
    fi
  fi
done

echo ""
echo "=== 验证完成 ==="
if [ $ERRORS -eq 0 ]; then
  echo "所有检查通过！"
  exit 0
else
  echo "发现 $ERRORS 个问题"
  exit 1
fi
