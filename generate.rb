require 'rubygems'
require 'bundler/setup'
require 'json'

def generate_list
	packages = []
	files = Dir.entries(Dir.pwd)
	puts "Adding.."
	files.each do |file|
		if file.include?("json") && file != "packages.json"
			puts file[0..-6]
			packages.push(file[0..-6])
		end
	end
	puts packages.to_json
	packages_file = open('packages.json', 'w')
	packages_file.write(packages.to_json)
	packages_file.close
	puts "Done."
end

generate_list