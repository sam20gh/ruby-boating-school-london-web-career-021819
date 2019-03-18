class Instructor
    
        attr_accessor :name
        @@all = []
        def initialize(name)
            @name = name
            @@all << self
        end
        def self.all
            @@all
        end
        def pass_student(student, test_name)
            pass = BoatinTest.all.find {|test| test.student.first_name == student && test.name == test_name}
            if pass
                pass.status = "passed"
            else
                BoatinTest.new(student, name, "passed", self)
            end
        end
        def fail_student(student, test_name)
            pass = BoatinTest.all.find {|test| test.student.first_name == student && test.name == test_name}
            if pass
                pass.status = "failed"
            else
                BoatinTest.new(student, name, "failed", self)
            end
        end
end
