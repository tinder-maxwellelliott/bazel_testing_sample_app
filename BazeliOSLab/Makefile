make:
	rm -rf BazeliOSLab.xcodeproj && NUMBER_OF_MODULES=50 ./generate_modules.rb && xcodegen generate &&  open BazeliOSLab.xcodeproj

xcode_test:
	mint install thii/xcbeautify
	time -p xcodebuild -project BazeliOSLab.xcodeproj -scheme MyApp -destination 'platform=iOS Simulator,name=iPhone 8' test 2>&1 | mint run thii/xcbeautify
