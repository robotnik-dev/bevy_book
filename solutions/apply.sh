set -e

folder=$1

if [ -z "$folder" ]; then
    echo "No solution number specified"
    exit -1
fi

if [ -d "solutions/$folder" ]; then
    # all good
    echo ""
else
    echo "solution/$folder is no directory, please double check solution number"
    exit -1
fi

if [[ `git status --porcelain` ]]; then
  echo "Git changes detected, please stash them first:"
  echo "git stash --include-untracked"
  exit 1;
fi

git apply -3 --ignore-space-change --ignore-whitespace --verbose  solutions/$folder/*.patch

echo "Solutions applied!"
echo ""
echo "Revert changes with:"
echo "solutions/restore.sh"
