load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_unit_test",
)

load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

name = "HbdhocnvqsxwhzapxrrtModule"

test_lib_name = name + "TestLib"

swift_library(
    name = test_lib_name,
    srcs = glob(["Tests/**/*.swift"]),
    deps = [":" + name],
    module_name = test_lib_name,
)

ios_unit_test(
    name = name + "UnitTests",
    deps = [test_lib_name],
    minimum_os_version = "13.0",
    visibility = ["//visibility:public"]
)

swift_library(
    name = name,
    module_name = name,
    srcs = glob(["Sources/**/*.swift"]),
    deps = [],
    visibility = ["//visibility:public"],
)
