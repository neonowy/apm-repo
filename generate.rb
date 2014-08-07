require 'rubygems'
require 'bundler/setup'
require 'json'

class Packages
	# Initialize class and generate packages array.
	#
	# @param path [String] path to packages folder
	def initialize(path = Dir.pwd)
		@packages = []
		@path = path
		Dir.entries(path).each do |file|
			if file.include?(".json") && file != "packages.json"
				@packages.push(file[0..-6])
			end
		end
	end

	# Counts packages.
	#
	# @return [Integer] number of packages.
	def length
		@packages.count
	end

	# Writes packages to packages.json.
	def write
		file = open("packages.json", "w")
		file.write(@packages.to_json)
		file.close
	end
end

packages = Packages.new()
packages.write
puts "#{packages.length} packages."