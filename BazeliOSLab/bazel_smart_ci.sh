COMMIT_RANGE=${COMMIT_RANGE:-$(git merge-base origin/master HEAD)".."}

# Go to the root of the repo
cd "$(git rev-parse --show-toplevel)"

# Get a list of the current files in package form by querying Bazel.
files=()
for file in $(git diff --name-only ${COMMIT_RANGE} ); do
  files+=($(bazel query $file))
  echo $(bazel query $file)
done

tests=$(bazel query \
    --keep_going \
    --noshow_progress \
    "kind(test, rdeps(//..., set(${files[*]}))) except attr('tags', 'manual', //...)")
# Run the tests if there were results
if [[ ! -z $tests ]]; then
  echo "Running tests"
  bazel test $tests
fi
