load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    commit = "8a86023a2d66382e5f481eb177ddf58e6295bfd1",
    shallow_since = "1585673372 -0700"
)

git_repository(
    name = "build_bazel_rules_swift",
    remote = "https://github.com/bazelbuild/rules_swift.git",
	commit = "7336f68990c3a2779186a7157bf29036023d3246",
    shallow_since = "1584642011 -0700"
)

git_repository(
    name = "build_bazel_apple_support",
    remote = "https://github.com/bazelbuild/apple_support.git",
	commit = "501b4afb27745c4813a88ffa28acd901408014e4",
    shallow_since = "1577729628 -0800"
)

git_repository(
    name = "bazel_skylib",
    remote = "https://github.com/bazelbuild/bazel-skylib.git",
    commit = "dfcfe825005ffba4a7c15cd9ddac737d040d2506",
    shallow_since = "1585159524 -0400"
)

http_file(
    name = "xctestrunner",
    executable = 1,
    urls = ["https://github.com/google/xctestrunner/releases/download/0.2.11/ios_test_runner.par"],
    sha256 = "0338c71977106f1304a8056739db6f462a76f386a299052c1ed7f8fd463d01a8"
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()
