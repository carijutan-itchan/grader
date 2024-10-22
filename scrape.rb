require "grader"
require "terminal-table"
require 'pry'

file = File.open("./files/grades.csv")
grader = Grader.new(file)

table = Terminal::Table.new do |t|
  t << ["Sample", "Output", "Here"]
end

puts table
