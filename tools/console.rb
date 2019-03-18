require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
s1 = Student.new("Sam")
s2 = Student.new("Byron")
s3 = Student.new("Sal")

i1 = Instructor.new("Guy")
i2 = Instructor.new("Nico")
i3 = Instructor.new("Marju")


t1 = s1.add_boating_test("Don't Crash 101", "pending", i1)
t2 = s2.add_boating_test("Power Steering 202", "failed", i3)
t3 = s1.add_boating_test("Power Steering 201", "passed", i2)
t4 = s3.add_boating_test("Power Steering 203", "passed", i1)
t5 = s3.add_boating_test("Power Issue", "failed", i2)
t6 = s3.add_boating_test("steeering issue", "failed", i1)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

