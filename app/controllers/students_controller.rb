class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_grades = Student.order("grade DESC")
        render json: students_grades
    end

    def highest_grade
        top_student = Student.order("grade DESC").first
        render json: top_student
    end
end
