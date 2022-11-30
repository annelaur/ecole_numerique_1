class TeachersController < ApplicationController

  def index
    @teachers= Teacher.all
    @teachers.parent_user = current_user
  end


end
