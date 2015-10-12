class Api::SkillsController < Api::ApiController
  def index
  	@skills = Skill.all
  end
  def show
  	@skill = Skill.find(params[:id])
	render json: @skill
  end
 # def new
  #	@skill = Skill.new
#  end
  def create
	@skill = Skill.new(params[:skill])
	if @skill.save
		render 'show', formats: [:json], handlers: [:jbuilder], status: 201
		#redirect_to api_skill_path, :notice => "Skill was saved"
	else
		render json: {error: "Skill couldn't be created"}, status: 422
	#	render "new"
	end
  end
  #def edit
#	@skill = Skill.find(params[:id])
 # end
  def update
	@skill = Skill.find(params[:id])
	if @skill.update(params[:skill])
		render 'show', formats: [:json], handlers: [:jbuilder], status: 200
		#redirect_to api_skill_path, :notice => "Skill updated"
	else
		render json: {error: "Skill could not be created."}, status: 422
	#	render "edit"
	end
  end
  def destroy
	@skill = Skill.find(params[:id])
	@skill.destroy
	render json: {}, status: 200
	#redirect_to api_skill_path, :notice => "Skill has been deleted"
  end	
end
