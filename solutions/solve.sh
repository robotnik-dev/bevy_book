set -e

for patch in ./solutions/*.patch; do
  echo "Checking $patch..."
  git apply --check "$patch"
done


# apply all patches
cat ./solutions/*.patch | git apply

