class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    @skill = Skill.new
  end

  def show
    @skill = Skill.find params[:id]
  end

end
