# require_relative 'story'
require 'methadone'
require_relative 'story'

include Methadone::Main
include Methadone::CLILogging

main do |args|
	load(args)
end

version '0.0.1'
description "Skynet is a computer program that can generate stories
based on a pre-specified 'template'. This template is coded in
a 'scripting language' called Sky."
arg :sky_file, :required

go!