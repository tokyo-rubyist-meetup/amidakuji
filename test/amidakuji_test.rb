require "minitest/autorun"

require_relative "../lib/amidakuji"
require_relative "../bin/helpers/puzzle_reader"


class AmidakujiTest < Minitest::Test
  def test_solve
    puzzle = PuzzleReader.new
    assert_equal(puzzle.solution,
      Amidakuji.solve(
        horizontal_space_count: puzzle.horizontal_space_count,
        vertical_space_count: puzzle.vertical_space_count,
        vertical_lines: puzzle.vertical_lines,
        start_location: puzzle.start_location,
      )
    )
  end

  def test_print_puzzle
    puzzle = PuzzleReader.new
    assert_equal(puzzle.solution,
      Amidakuji.print_puzzle(
        horizontal_space_count: puzzle.horizontal_space_count,
        vertical_space_count: puzzle.vertical_space_count,
        vertical_lines: puzzle.vertical_lines,
        start_location: puzzle.start_location,
      )
    )
  end

  def test_print_puzzle_solution
    puzzle = PuzzleReader.new
    assert_equal(puzzle.solution,
      Amidakuji.print_puzzle_solution(
        horizontal_space_count: puzzle.horizontal_space_count,
        vertical_space_count: puzzle.vertical_space_count,
        vertical_lines: puzzle.vertical_lines,
        start_location: puzzle.start_location,
      )
    )
  end
end