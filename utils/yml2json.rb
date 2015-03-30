#!/usr/bin/env ruby
# yml2json.rb : Convert a YAML file to json, piping to stdout.
#       usage : ./yml2json.rb

require 'yaml'
require 'json'

if(ARGV.count != 1)
  raise "Invocation Error. Please specify one YAML file argument."
end

unless(File.file?(ARGV[0]))
  raise "Error. File '#{ARGV[0]}' not found."
end

data = YAML.load_file(ARGV[0])
puts JSON.pretty_generate(data)
