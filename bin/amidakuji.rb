#!/usr/bin/env ruby

require_relative "../lib/amidakuji"
require "json"

json_file = File.expand_path("../puzzles/puzzle_data.json", __dir__)
data = JSON.parse(File.read(json_file))
puzzle_key = data.keys.sample
puzzle = data[puzzle_key]

puts "working on #{puzzle_key}"

goal_line = Amidakuji.solve(
  board_data: puzzle["boardData"],
  vertical_lines: puzzle["verticalLines"],
  start_location: puzzle["startLocation"],
)

if goal_line == puzzle["solution"]
  puts "that is the correct answer!"
else
  puts "you returned #{goal_line}, but that is incorrect"
end

# TODO: add options for print_puzzle and print_puzzle_solution
