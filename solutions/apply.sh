set -e

if [[ `git status --porcelain` ]]; then
  echo "Git changes detected, please stash them first:"
  echo "git stash --include-untracked"
  exit 1;
fi

for patch in ./solutions/*.patch; do
  echo "Checking $patch..."
  git apply --check "$patch"
done

echo "Apply all patches ..."
cat ./solutions/*.patch | git apply
echo "All done."
echo ""
echo "Revert changes with:"
echo "git restore ."
