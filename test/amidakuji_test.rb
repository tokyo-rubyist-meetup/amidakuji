require "minitest/autorun"

require_relative "../lib/amidakuji"
require_relative "../lib/amidakuji/puzzle_reader"


class AmidakujiTest < Minitest::Test
  puzzles = Amidakuji::PuzzleReader.new.puzzles
  puzzles.each do |puzzle|
    define_method "test_solve_#{puzzle.number}" do
      assert_equal(puzzle.solution,
        Amidakuji.solve(
          width: puzzle.width,
          height: puzzle.height,
          horizontal_lines: puzzle.horizontal_lines,
          start_location: puzzle.start_location,
        )
      )
    end

    define_method "test_puzzle_as_string_#{puzzle.number}" do
      assert_equal(puzzle.board,
        Amidakuji.puzzle_as_string(
          width: puzzle.width,
          height: puzzle.height,
          horizontal_lines: puzzle.horizontal_lines,
          start_location: puzzle.start_location,
        )
      )
    end

    define_method "test_solution_as_string_#{puzzle.number}" do
      assert_equal(puzzle.board_with_solution,
        Amidakuji.solution_as_string(
          width: puzzle.width,
          height: puzzle.height,
          horizontal_lines: puzzle.horizontal_lines,
          start_location: puzzle.start_location,
        )
      )
    end
  end

end
