require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("Zalmy")

instructor1 = Instructor.new("Albus Percival Wulfric Brian Dumbledore")

test1 = BoatingTest.new(student1, "test1", "passed", instructor1)
test2 = BoatingTest.new(student1, "test2", "passed", instructor1)
test3 = BoatingTest.new(student1, "test3", "failed", instructor1)
test4 = BoatingTest.new(student1, "test4", "failed", instructor1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

