COMMIT_RANGE=${COMMIT_RANGE:-$(git merge-base master HEAD)".."}

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
  bazel test $tests --apple_platform_type=ios --ios_minimum_os=13.0 --ios_simulator_device="iPhone 8" --ios_simulator_version=13.3
fi
