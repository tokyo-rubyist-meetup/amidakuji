require "json"

class Amidakuji::PuzzleReader
  attr_reader :puzzles

  class PuzzleData
    attr_reader :horizontal_space_count, :vertical_space_count, :horizontal_lines, :start_location, :solution

    def initialize(data)
      @horizontal_space_count = data["horizontalSpaceCount"]
      @vertical_space_count = data["verticalSpaceCount"]
      @horizontal_lines = data["horizontalLines"]
      @start_location = data["startLocation"]
      @solution = data["solution"]
    end
  end

  def initialize
    json_file = File.expand_path("../../puzzles/puzzle_data.json", __dir__)
    data = JSON.parse(File.read(json_file))
    @puzzles = data.map {|puzzle_data| PuzzleData.new(puzzle_data)}
  end
end
