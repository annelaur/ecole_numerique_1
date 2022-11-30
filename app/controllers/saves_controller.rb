class SavesController < ApplicationController
  def index
    @saves = Safe.all
    @safe.parent_user = current_user
  end

  def show
    @safe = Safe.find(params[:id])
    @safe.parent_user = current_user
  end

  def new
    @safe = Safe.new
  end

  def create
    @safe = Safe.new(safe_params)
    @safe.parent_user = current_user
    @safe.save
  end

  def update
    @safe = Safe.find(params[:id])
    @safe.parent_user = current_user
    @safe.update(safe_params)
  end

private
  def safe_params
    params.require(:safe).permit(:file_name)
  end
