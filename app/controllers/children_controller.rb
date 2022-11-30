class ChildrenController < ApplicationController

  def index
    @children = Child.all
    @children.parent_user = current_user
  end

  def show
    @child = Child.find(params[:id])
    @children.parent_user = current_user
  end

end
