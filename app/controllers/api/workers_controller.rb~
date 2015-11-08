class Api::WorkersController < Api::ApiController
  def index
    @workers = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.save
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work.update(work_params)
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
  end

end
