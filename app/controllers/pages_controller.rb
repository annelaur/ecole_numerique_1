class PagesController < ApplicationController
  def home
  end

  def dashboard
    @children = current_parent_user.children
    @teachers = @children.map do |child|
      child.classroom.teachers.first
    end
  end



  # def child
  #   @childen = @parent_users.births.each do |birth|
  #   child = birth.child
  #   @children << child if !children.include?(child)
  # end

end
