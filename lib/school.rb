# code here!
require "pry"
class School
attr_accessor :school, :roster, :student
 def initialize(school)
    @school = school
    @roster = {}
 end
 def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name
 end
 def grade(grade)
    @roster[grade]
end
def sort
    hash = {}
    @roster.each do |grade, students|
        # binding.pry
        hash[grade] = students.sort
    end
    hash
    end


end