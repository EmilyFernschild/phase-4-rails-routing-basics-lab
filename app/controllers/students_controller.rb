class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end
    def highest_grade
        highest_grade = Student.all.max_by{|s| s.grade}
        render json: highest_grade
    end
end
