class Api::SkillsController < Api::ApiController
  def index
    @skills = Skill.all
  end

  def show
  	@skill = Skill.find(params[:id])
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.save
  end

  def update
   @skill.update(skill_params)
  end

  def destroy
	@skill = Skill.find(params[:id])
	@skill.destroy
  end	

end
