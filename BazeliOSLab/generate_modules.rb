#!/usr/bin/env ruby
require 'erb'
require 'securerandom'

`rm -rf Modules/*`
`mkdir -p Modules`

if File.exists?("yaml_output.yml")
    `rm yaml_output.yml`
end

if File.exists?("yaml_test_target_output.yml")
    `rm yaml_test_target_output.yml`
end

uuids = []
module_names = []

0.upto(ENV["NUMBER_OF_MODULES"].to_i).each do |i|
    uuid = (0...20).map { ('a'..'z').to_a[rand(26)] }.join.capitalize
    source_template = ERB.new(File.read("source_template.erb"))
    test_template = ERB.new(File.read("test_template.erb"))
    build_template = ERB.new(File.read("build.erb"))
    Dir.mkdir("Modules/#{uuid}Module")
    Dir.mkdir("Modules/#{uuid}Module/Sources")
    Dir.mkdir("Modules/#{uuid}Module/Tests")
    File.write("Modules/#{uuid}Module/Sources/#{uuid}Class.swift", source_template.result(binding))
    File.write("Modules/#{uuid}Module/Tests/#{uuid}ClassTests.swift", test_template.result(binding))
    File.write("Modules/#{uuid}Module/Tests/#{uuid}ClassTests.swift", test_template.result(binding))
    module_name = uuid + "Module"
    File.write("Modules/#{uuid}Module/BUILD", build_template.result(binding))
    uuids << uuid
    module_names << module_name
end

project_template = ERB.new(File.read("project.erb"))
File.write("project.yml", project_template.result(binding))

module_deps = module_names.map{|m| "\"//Modules/#{m}:#{m}\""}.join(",")
lab_build_template = ERB.new(File.read("lab_build.erb"))
File.write("BazeliOSLab/BUILD", lab_build_template.result(binding))
