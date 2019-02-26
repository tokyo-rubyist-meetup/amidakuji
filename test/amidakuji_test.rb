require "minitest/autorun"

require_relative "../lib/amidakuji"


class AmidakujiTest < Minitest::Test
  def test_solve
    assert(Amidakuji.solve(board_data: "", vertical_lines: "", start_location: "").between?(0,9), "Should be betwteen 0 and 9")
  end

  def test_print_puzzle
    puzzle_as_string = ""
    assert_equal(puzzle_as_string, Amidakuji.print_puzzle(board_data: "", vertical_lines: "", start_location: ""))
  end

  def test_print_puzzle_solution
    puzzle_with_solution_as_string = ""
    assert_equal(puzzle_with_solution_as_string, Amidakuji.print_puzzle_solution(board_data: "", vertical_lines: "", start_location: ""))
  end
end