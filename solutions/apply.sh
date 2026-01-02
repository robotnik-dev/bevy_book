set -e

solution=$1

if [ -z "$solution" ]; then
    echo "No solution number specified"
    exit -1
fi

if [[ `git status --porcelain` ]]; then
  echo "Git changes detected, please stash them first:"
  echo "git stash --include-untracked"
  exit 1;
fi

# create temp folder for solutions
mkdir -p temp_solutions

patch_not_found=1

for patch in solutions/*.patch
do
    file=${patch#solutions/}
    number=${file%-*.patch}
    if [ $number == $solution ]; then
        echo "found latest patch: $file"
        cp solutions/$file temp_solutions
        patch_not_found=0
        break
    fi
    cp solutions/$file temp_solutions
done

if [ $patch_not_found == 1 ]; then
    echo "solution with number: '$solution' not found."
    echo "Please double check correctness"
    # remove temp folder again
    rm -rf temp_solutions
    exit -1
fi

echo "The following patches will be applied: "
ls temp_solutions

git apply -3 --ignore-space-change --ignore-whitespace --verbose  temp_solutions/*.patch

# remove temp folder again
rm -rf temp_solutions

echo "Done!"
echo ""
echo "Revert changes with:"
echo "solutions/restore.sh"
