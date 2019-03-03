#!/usr/bin/env ruby

require_relative "../lib/amidakuji"
require_relative "../lib/amidakuji/puzzle_reader"

puzzle = Amidakuji::PuzzleReader.new

puts "working on puzzle #{puzzle.puzzle_number}"

goal_line = Amidakuji.solve(
  horizontal_space_count: puzzle.horizontal_space_count,
  vertical_space_count: puzzle.vertical_space_count,
  horizontal_lines: puzzle.horizontal_lines,
  start_location: puzzle.start_location
)

if goal_line == puzzle.solution
  puts "that is the correct answer!"
else
  puts "you returned #{goal_line}, but that is incorrect"
end

# TODO: add options for print_puzzle and print_puzzle_solution
