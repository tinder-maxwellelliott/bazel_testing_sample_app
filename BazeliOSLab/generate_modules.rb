#!/usr/bin/env ruby
require 'erb'
require 'securerandom'

`rm -rf Modules/*`

if File.exists?("yaml_output.yml")
    `rm yaml_output.yml`
end

if File.exists?("yaml_test_target_output.yml")
    `rm yaml_test_target_output.yml`
end

uuids = []

0.upto(ENV["NUMBER_OF_MODULES"].to_i).each do |i|
    uuid = (0...20).map { ('a'..'z').to_a[rand(26)] }.join.capitalize
    source_template = ERB.new(File.read("source_template.erb"))
    test_template = ERB.new(File.read("test_template.erb"))
    Dir.mkdir("Modules/#{uuid}Module")
    Dir.mkdir("Modules/#{uuid}Module/Sources")
    Dir.mkdir("Modules/#{uuid}Module/Tests")
    File.write("Modules/#{uuid}Module/Sources/#{uuid}Class.swift", source_template.result(binding))
    File.write("Modules/#{uuid}Module/Tests/#{uuid}ClassTests.swift", test_template.result(binding))
    uuids << uuid
end

project_template = ERB.new(File.read("project.erb"))
File.write("project.yml", project_template.result(binding))
