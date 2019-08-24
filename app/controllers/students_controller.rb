class StudentsController < ApplicationController
  def home
  end

  def index
    @students = Student.all
  end
end
