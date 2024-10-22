require "csv"
require "student"

class Grader

  attr_accessor :students, :file

  def initialize(file)
    @file = file
    @students = []
  end

  def parse_student
    CSV.foreach(file, headers: true) do |row|
      students << Student.new(
        first_name: row["first_name"],
        last_name: row["last_name"],
        age: row["age"],
        english: row["english"],
        math: row["math"],
        physics: row["physics"]
      )
    end
  end
end
