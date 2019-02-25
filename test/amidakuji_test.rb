require "minitest/autorun"

require_relative "../lib/amidakuji"


class AmidakujiTest < Minitest::Test
  def test_solve
    assert_equal(true, Amidakuji.solve("string"))
  end

  def test_print_puzzle
    assert_equal(true, Amidakuji.print_puzzle)
  end

  def test_print_puzzle_solution
    assert_equal(true, Amidakuji.print_puzzle_solution)
  end
end