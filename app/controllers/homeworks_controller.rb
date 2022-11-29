class HomeworksController < ApplicationController

  def index
    @homeworks = Homework.all
  end

  def show
    @homeworks = Homework.find(params[:id])
    @child = Homework.classroom
  end

end
