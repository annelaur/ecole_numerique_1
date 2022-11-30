class HomeworksController < ApplicationController

  def index
    @homeworks = Homework.all
    @homeworks.parent_user = current_user
  end

  def show
    @homeworks = Homework.find(params[:id])
    @homeworks.parent_user = current_user

  end

end
