class Student
    attr_accessor :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end
    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end
    def self.find_student(student_first_name)
        @@all.find {|student| student.first_name == student_first_name}
    end
    def testresults
        BoatingTest.all.select {|test| test.student.first_name == self.first_name}
    end
    def grade_percentage
        passed = BoatingTest.all.select {|test| test.student.first_name == self.first_name && test.status == "passed"}
        rate = passed.length.to_f / testresults.length.to_f
        rate.round(2)

    end




end
