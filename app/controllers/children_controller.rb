class ChildrenController < ApplicationController

  def index
    @children = Child.all
  end

  def show
    @child = Child.find(params[:id])
  end

  def new
    @child = Child.new

  end

  def create
    @child = Child.new(child_params)
    @children.parent_user = current_user
    @child.save
  end


  private
    def child_params
      params.require(:child).permit(:first_name, :last_name, :classroom)
    end

end
