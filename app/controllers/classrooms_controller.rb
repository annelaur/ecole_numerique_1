class ClassroomsController < ApplicationController

  def index
    @classrooms = Classroom.all
    @classrooms.parent_user = current_user
  end

  def show
    @classroom = Classroom.find(params[:id])
    @classrooms.parent_user = current_user
  end

end
