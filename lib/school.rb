# code here!
require 'pry'
class School

    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
       
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end

    end
    
    def grade(grade)
        @roster[grade] == grade
        return @roster[grade]
    end

    def sort 
        new_hash = {}
        @roster.each do |student_name, grade|
            new_hash[student_name] = grade.sort
        end
        new_hash




    end
end

