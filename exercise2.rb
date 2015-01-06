class Student
  attr_writer :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    puts "Well done!" if grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 5)
bob = Student.new("Bob", 4)

joe.better_grade_than?(bob)
