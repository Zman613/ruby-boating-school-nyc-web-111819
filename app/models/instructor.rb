require 'pry'
class Instructor

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self
    end

    def self.all
        @@all
    end

    def pass_student(test_name, student)
      found_test = BoatingTest.all.find do |bt|
          bt.test_name == test_name && bt.student == student 
      end
      found_test ? found_test.status = "passed" : found_test = BoatingTest.new(student, test_name, "passed", self)
      found_test
    end

    def fail_student(test_name, student)
      found_test = BoatingTest.all.find do |bt|
          bt.test_name == test_name && bt.student == student 
      end
      found_test ? found_test.status = "failed" : found_test = BoatingTest.new(student, test_name, "failed", self)
      found_test
    end
end
