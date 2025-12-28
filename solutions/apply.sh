set -e

if [[ `git status --porcelain` ]]; then
  echo "Git changes detected, please stash them first:"
  echo "git stash --include-untracked"
  exit 1;
fi

git apply -3 --ignore-space-change --ignore-whitespace --verbose  solutions/*.patch

echo "Solution applied!"
echo ""
echo "Revert changes with:"
echo "solutions/restore.sh"
