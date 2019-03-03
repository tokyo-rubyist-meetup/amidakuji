require "minitest/autorun"

require_relative "../lib/amidakuji"
require_relative "../lib/amidakuji/puzzle_reader"


class AmidakujiTest < Minitest::Test
  puzzles = Amidakuji::PuzzleReader.new.puzzles
  puzzles.each do |puzzle|
    define_method "test_solve_#{puzzle.number}" do
      assert_equal(puzzle.solution,
        Amidakuji.solve(
          horizontal_space_count: puzzle.horizontal_space_count,
          vertical_space_count: puzzle.vertical_space_count,
          horizontal_lines: puzzle.horizontal_lines,
          start_location: puzzle.start_location,
        )
      )
    end
  end

end
