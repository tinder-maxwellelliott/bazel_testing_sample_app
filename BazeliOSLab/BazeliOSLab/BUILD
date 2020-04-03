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
        "//Modules/PskowlljjeppgodszuiuModule:PskowlljjeppgodszuiuModule","//Modules/PjxjwcfrgowjerzlwwldModule:PjxjwcfrgowjerzlwwldModule","//Modules/BdgnfcbiaazdzzakaukcModule:BdgnfcbiaazdzzakaukcModule","//Modules/YohtiglxnbinwupeinbmModule:YohtiglxnbinwupeinbmModule","//Modules/AsupkyvabsbnmfetfwnhModule:AsupkyvabsbnmfetfwnhModule","//Modules/SusulqmuzzpuidewrwfoModule:SusulqmuzzpuidewrwfoModule","//Modules/UsykbrimlzkubfvpwtttModule:UsykbrimlzkubfvpwtttModule","//Modules/KoreexswxalzlelyykziModule:KoreexswxalzlelyykziModule","//Modules/AgmamxnxrmvpxqrdvoygModule:AgmamxnxrmvpxqrdvoygModule","//Modules/HsdexpmpbuytzlivayzrModule:HsdexpmpbuytzlivayzrModule","//Modules/IanaakpcfuvqubwamhcwModule:IanaakpcfuvqubwamhcwModule"
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
