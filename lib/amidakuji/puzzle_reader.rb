require "yaml"

class Amidakuji::PuzzleReader
  attr_reader :puzzles

  class PuzzleData
    attr_reader :number, :width, :height, :horizontal_lines, :start_location, :solution, :board, :board_with_solution

    def initialize(number, data)
      @number = number
      @width = data["width"]
      @height = data["height"]
      @horizontal_lines = data["horizontalLines"]
      @start_location = data["startLocation"]
      @solution = data["solution"]
      @board = data["board"]
      @board_with_solution = data["boardWithSolution"]
    end
  end

  def initialize
    yaml_file = File.expand_path("../../puzzles/puzzle_data.yml", __dir__)
    data = YAML.load_file(yaml_file)
    @puzzles = data.map {|number, puzzle_data| PuzzleData.new(number, puzzle_data)}
  end

  def random
    puzzles.sample
  end
end
