class Student
  attr_accessor :first_name, :last_name, :age, :english, :math, :physics

  def initialize(first_name:, last_name:, age:, english:, math:, physics:)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @english = english
    @math = math
    @physics = physics
  end

  def average
    total_grade = english.to_i + math.to_i + physics.to_i
    (total_grade.to_f / 3).to_i
  end
end
