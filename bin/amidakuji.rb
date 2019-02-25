require_relative "../lib/amidakuji"
require "json"

json_file = File.expand_path("../puzzles/puzzle_data.json", __dir__)
data = JSON.parse(File.read(json_file))

puts "inputing #{data}!"
puts "Start at point 2!"

goal_line = Amidakuji.solve(...)

puts "End up at! #{goal_line}"

