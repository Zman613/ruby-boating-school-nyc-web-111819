require 'pry'
class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        self.class.all << self
    end

    def self.all 
        @@all 
    end

    def add_boating_test(test, status, instructor)
        BoatingTest.new(self, test, status, instructor)
    end

    def self.find_student(first_name)
        self.all.select {|student| student.first_name == first_name}
    end

    def all_tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def grade_percentage
        total = 0.0
        all_tests.each do |test| 
            test.status == "passed" ? total += 1 : total
        end 

        100 * (total / all_tests.length)
    end
end
