class PagesController < ApplicationController
  def home
  end

  def dashboard
    @children = current_parent_user.children

    @teachers = @children.map do |child|
      child.classroom.teachers.first
    end

    @classrooms = @children.map do |child|
      child.classroom
    end

    @saves = @children.map do |child|
      child.saves
    end

  end

end
