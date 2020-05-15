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
        "//BazeliOSLab/Modules/VthqudloiarldralioceModule:VthqudloiarldralioceModule","//BazeliOSLab/Modules/OcgdlquaarpqgjxhkutuModule:OcgdlquaarpqgjxhkutuModule","//BazeliOSLab/Modules/NpaclahenvasqastbbuuModule:NpaclahenvasqastbbuuModule","//BazeliOSLab/Modules/RdasauiarzztsmpmrfxsModule:RdasauiarzztsmpmrfxsModule","//BazeliOSLab/Modules/XiwqqdhiulxdmtntopyaModule:XiwqqdhiulxdmtntopyaModule","//BazeliOSLab/Modules/TzdcbzzwyyxjdjbnfuotModule:TzdcbzzwyyxjdjbnfuotModule"
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
