require "json"

class PuzzleReader
  attr_reader :horizontal_space_count, :vertical_space_count, :vertical_lines, :start_location, :puzzle_number, :solution

  def initialize
    json_file = File.expand_path("../puzzles/puzzle_data.json", __dir__)
    data = JSON.parse(File.read(json_file))

    @puzzle_number = rand(data.length)
    @horizontal_space_count = data[@puzzle_number]["horizontalSpaceCount"]
    @vertical_space_count = data[@puzzle_number]["verticalSpaceCount"]
    @vertical_lines = data[@puzzle_number]["verticalLines"]
    @start_location = data[@puzzle_number]["startLocation"]
    @solution = data[@puzzle_number]["solution"]
  end
end