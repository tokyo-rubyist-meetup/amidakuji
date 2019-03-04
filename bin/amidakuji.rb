#!/usr/bin/env ruby

require_relative "../lib/amidakuji"
require_relative "../lib/amidakuji/puzzle_reader"

puzzle = Amidakuji::PuzzleReader.new.random
puts "Choose a number between 1 and #{puzzle.width}:"
start_location = gets.chomp.to_i

puts "The amidakuji has a height of #{puzzle.height}, and lines represented by #{puzzle.horizontal_lines.inspect}."

puts "It looks like:"
puzzle_output = Amidakuji.puzzle_as_string(
  width: puzzle.width,
  height: puzzle.height,
  horizontal_lines: puzzle.horizontal_lines
)
puts puzzle_output || "UNIMPLEMENTED"

goal_line = Amidakuji.solve(
  width: puzzle.width,
  height: puzzle.height,
  horizontal_lines: puzzle.horizontal_lines,
  start_location: puzzle.start_location
)
puts "Given your starting location of #{start_location}, the final position is #{goal_line || "UNIMPLEMENTED"}."
puts "The path taken looks like:"
puzzle_output = Amidakuji.solution_as_string(
  width: puzzle.width,
  height: puzzle.height,
  horizontal_lines: puzzle.horizontal_lines,
  start_location: puzzle.start_location
)
puts puzzle_output || "UNIMPLEMENTED"
