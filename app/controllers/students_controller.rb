class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    # In the grades action, return JSON data representing a list of all students, ordered by grade from highest to lowest
    def grades
        students = Student.all.order(grade: :desc)
        render json: students
    end

    # In the highest_grade action, return JSON data representing the one student with the highest grade
    def highest_grade
        students = Student.all.order(grade: :desc).first
        render json: students
    end
end

