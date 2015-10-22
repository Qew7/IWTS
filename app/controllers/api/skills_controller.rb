class Api::SkillsController < Api::ApiController
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
    @book = Skill.new(skill_params)
    @skill.save
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
   @skill.update(skill_params)
  end

  def destroy
	@skill = Skill.find(params[:id])
	@skill.destroy
  end	

end
