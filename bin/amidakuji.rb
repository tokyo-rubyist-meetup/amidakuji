#!/usr/bin/env ruby

require_relative "../lib/amidakuji"
require_relative "../lib/amidakuji/puzzle_reader"

puzzles = Amidakuji::PuzzleReader.new.puzzles
puzzle_number = rand(puzzles.length)
puzzle = puzzles[puzzle_number]

puts "working on puzzle #{puzzle_number}"

case ARGV[0]
when "--print_puzzle"
  puzzle_output = Amidakuji.print_puzzle(
    horizontal_space_count: puzzle.horizontal_space_count,
    vertical_space_count: puzzle.vertical_space_count,
    horizontal_lines: puzzle.horizontal_lines,
    start_location: puzzle.start_location
  )

  puts puzzle_output

  if puzzle_output == puzzle.board
    puts "that is the correct answer!"
  else
    puts "the board does not look correct"
  end
when "--print_puzzle_solution"
  puzzle_output = Amidakuji.print_puzzle_solution(
    horizontal_space_count: puzzle.horizontal_space_count,
    vertical_space_count: puzzle.vertical_space_count,
    horizontal_lines: puzzle.horizontal_lines,
    start_location: puzzle.start_location
  )

  puts puzzle_output

  if puzzle_output == puzzle.boardWithSolution
    puts "that is the correct answer!"
  else
    puts "the board does not look correct"
  end
else
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
end
