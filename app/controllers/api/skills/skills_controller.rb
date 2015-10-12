class SkillsController < ApplicationController
  def index
  	@skills = Skill.all
  end
  def show
  	@skill = Skill.find(params[:id])
  end
  def new
  	@skill = Skill.new
  end
  def create
	@skill = Skill.new(params[:skill])
	if @skill.save
		redirect_to api_skill_path, :notice => "Skill was saved"
	else
		render "new"
	end
  end
  def edit
	@skill = Skill.find(params[:id])
  end
  def update
	@skill = Skill.find(params[:id])
	if @skill.update(params[:skill])
		redirect_to api_skill_path, :notice => "Skill updated"
	else
		render "edit"
	end
  end
  def destroy
	@skill = Skill.find(params[:id])
	@skill.destroy
	redirect_to api_skill_path, :notice => "Skill has been deleted"
  end	
end
