# Bazel Test Performance Sample App
This sample app can be used to evaluate Bazel's test performance over a large iOS codebases with many modules.

### Installation

    $ brew install bazel gnu-time
    $ cd BazeliOSLab && make NUMBER_OF_MODULES=SOME_NUMBER

### Running the tests

To simulate making a CI run using Bazel you will need to fork off of `master` to a new branch

    $ git checkout -b run_tests

Next modify any Swift source file under `BazeliOSLab/Modules`. The source files follow this pattern SOMEUUIDClass.swift. Then commit the change

    $ git add . && git commit -m "test bazel"

Then you can run Bazel via

    $ make bazel_smart_test

This will intellegently only run the graph of affected targets for the changed files. As you increase NUMBER_OF_MODULES in the `make` script you will see a huge difference between this command and xcodebuild

To run xcodebuild testing run

    $ make xcode_test

Timing data is provided for both commands in stdout
