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
        "//Modules/UjadwgichwelqzazfjmcModule:UjadwgichwelqzazfjmcModule","//Modules/FfdxilwacukuginqinzuModule:FfdxilwacukuginqinzuModule","//Modules/DrifwoawyiarjxhzbafmModule:DrifwoawyiarjxhzbafmModule","//Modules/WofcocbyqeeebeztgujnModule:WofcocbyqeeebeztgujnModule","//Modules/TjvzhnvqwvvwctreojlsModule:TjvzhnvqwvvwctreojlsModule","//Modules/KjjkhpflwszlvkkqpouwModule:KjjkhpflwszlvkkqpouwModule","//Modules/BgjcbgijbzaetxvqxevxModule:BgjcbgijbzaetxvqxevxModule","//Modules/AfocreoarxqlslumxtjoModule:AfocreoarxqlslumxtjoModule","//Modules/DnvysrekyoksptjrskqnModule:DnvysrekyoksptjrskqnModule","//Modules/WkjeddciuuvhdkdkanvmModule:WkjeddciuuvhdkdkanvmModule","//Modules/JdsscacekxvbkgneudwwModule:JdsscacekxvbkgneudwwModule"
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
