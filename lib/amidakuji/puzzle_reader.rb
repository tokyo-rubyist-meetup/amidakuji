require "yaml"

class Amidakuji::PuzzleReader
  attr_reader :puzzles

  class PuzzleData
    attr_reader :number, :horizontal_space_count, :vertical_space_count, :horizontal_lines, :start_location, :solution, :board, :boardWithSolution

    def initialize(number, data)
      @number = number
      @horizontal_space_count = data["horizontalSpaceCount"]
      @vertical_space_count = data["verticalSpaceCount"]
      @horizontal_lines = data["horizontalLines"]
      @start_location = data["startLocation"]
      @solution = data["solution"]
      @board = data["board"]
      @boardWithSolution = data["boardWithSolution"]
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
