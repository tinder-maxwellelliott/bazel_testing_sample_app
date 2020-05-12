
make:
	rm -rf BazeliOSLab.xcodeproj && mkdir -p BazeliOSLab/Modules && ./generate_modules.rb && xcodegen generate

xcode_build:
	gtime -f "XcodeBuild ElapsedTime: %E Minutes" xcodebuild -project BazeliOSLab.xcodeproj -scheme MyApp -destination 'platform=iOS Simulator,name=iPhone 8' build -sdk iphonesimulator 2>&1 CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS=""

xcode_test: xcode_build
	gtime -f "XcodeBuildForTesting ElapsedTime: %E Minutes" xcodebuild -project BazeliOSLab.xcodeproj -scheme MyApp -destination 'platform=iOS Simulator,name=iPhone 8' -sdk iphonesimulator build-for-testing 2>&1 CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS="" 2>&1
	gtime -f "XcodeTest ElapsedTime: %E Minutes" xcodebuild -project BazeliOSLab.xcodeproj -scheme MyApp -destination 'platform=iOS Simulator,name=iPhone 8' -sdk iphonesimulator test CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS="" 2>&1

bazel_build:
	gtime -f "bazel_build ElapsedTime: %E Minutes" bazel build //BazeliOSLab:MyApp --apple_platform_type=ios --ios_minimum_os=13.0 --ios_simulator_device="iPhone 8" --ios_simulator_version=13.3

bazel_test:
	gtime -f "bazel_test ElapsedTime: %E Minutes" bazel test //... --apple_platform_type=ios --ios_minimum_os=13.0 --ios_simulator_device="iPhone 8" --ios_simulator_version=13.3

bazel_smart_test:
	gtime -f "bazel_smart_test ElapsedTime: %E Minutes" ./bazel_smart_ci.sh
