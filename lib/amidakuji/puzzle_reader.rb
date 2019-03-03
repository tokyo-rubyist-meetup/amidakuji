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
    yaml_files = File.expand_path("../../puzzles/*.yml", __dir__)
    @puzzles = Dir[yaml_files].map do |yaml_file|
      number = File.basename(yaml_file, ".yml")
      data = YAML.load_file(yaml_file)
      PuzzleData.new(number, data)
    end
  end

  def random
    puzzles.sample
  end
end
