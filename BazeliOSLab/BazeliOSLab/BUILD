load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_application"
)

load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

name = "MyApp"

swift_library(
    name = name + "Lib",
    module_name = name + "Lib",
    srcs = glob(["**/*.swift"]),
    deps = [
        "//BazeliOSLab/Modules/VzdgnhvijepsejwvzzrmModule:VzdgnhvijepsejwvzzrmModule","//BazeliOSLab/Modules/GagnavxuucnyzcwxozalModule:GagnavxuucnyzcwxozalModule","//BazeliOSLab/Modules/AivvdaspcwiuwbcyrqcgModule:AivvdaspcwiuwbcyrqcgModule","//BazeliOSLab/Modules/ZoyhlivdsdqzpiufgvolModule:ZoyhlivdsdqzpiufgvolModule","//BazeliOSLab/Modules/AwltdnylrcrmsyiyhwajModule:AwltdnylrcrmsyiyhwajModule","//BazeliOSLab/Modules/UnbqqdddupzlwlmpnwyqModule:UnbqqdddupzlwlmpnwyqModule","//BazeliOSLab/Modules/YquuhfpwvlmxfulstehiModule:YquuhfpwvlmxfulstehiModule","//BazeliOSLab/Modules/PjofdolefaalkcelbvmiModule:PjofdolefaalkcelbvmiModule","//BazeliOSLab/Modules/AioozazfwizpxjmrgygnModule:AioozazfwizpxjmrgygnModule","//BazeliOSLab/Modules/TrinzdbknacwuxswdflpModule:TrinzdbknacwuxswdflpModule","//BazeliOSLab/Modules/TsvqmznuwumqchghtsphModule:TsvqmznuwumqchghtsphModule"
    ]
)

ios_application(
    name = name,
    bundle_id = "com.bazelioslab" + name,
    families = [
        "iphone",
    ],
    infoplists = ["BazelInfo.plist"],
    minimum_os_version = "13.0",
    visibility = ["//visibility:public"],
    deps = [":" + name + "Lib"],
)
