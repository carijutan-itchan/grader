require "grader"
require "terminal-table"
require 'pry'

file = File.open("./files/grades.csv")
grader = Grader.new(file)
grader.parse_student

table = Terminal::Table.new do |t|
  t << ["Name", "English", "Math", "Physics", "Average"]

  grader.students.each do |student|
    t.add_separator
    t.add_row([student.full_name, student.english, student.math, student.physics, student.average])
  end
end

puts table
