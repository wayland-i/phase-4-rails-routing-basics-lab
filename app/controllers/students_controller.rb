class StudentsController < ApplicationController
    
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        grades = students.order(grade: :desc )
        render json: grades
    end

    def highest_grade
        students = Student.all
        grades = students.order(grade: :desc)
        best_student = grades.first
        render json: best_student
    end

end
