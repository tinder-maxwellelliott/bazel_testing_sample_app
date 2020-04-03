NUMBER_OF_MODULES ?= 100

make:
	brew install bazel
	rm -rf BazeliOSLab.xcodeproj && ./generate_modules.rb && xcodegen generate

xcode_build:
	time -p xcodebuild -project BazeliOSLab.xcodeproj -scheme MyApp -destination 'platform=iOS Simulator,name=iPhone 8' build -sdk iphonesimulator 2>&1 CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS="" -UseModernBuildSystem=NO

xcode_test:
	xcodebuild -project BazeliOSLab.xcodeproj -scheme MyApp -destination 'platform=iOS Simulator,name=iPhone 8' -sdk iphonesimulator build-for-testing 2>&1 CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS="" -UseModernBuildSystem=NO
	time -p xcodebuild -project BazeliOSLab.xcodeproj -scheme MyApp -destination 'platform=iOS Simulator,name=iPhone 8' -sdk iphonesimulator test CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS="" -UseModernBuildSystem=NO 2>&1

bazel_build:
	time bazel build //BazeliOSLab:MyApp --apple_platform_type=ios --ios_minimum_os=13.0 --ios_simulator_device="iPhone 8" --ios_simulator_version=13.3

bazel_test:
	bazel test //... --apple_platform_type=ios --ios_minimum_os=13.0 --ios_simulator_device="iPhone 8" --ios_simulator_version=13.3

bazel_smart_test:
	./bazel_smart_ci.sh
