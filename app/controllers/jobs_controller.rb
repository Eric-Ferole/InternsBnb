class JobsController < ApplicationController
  before_action :set_jobs, only: ["show", "edit", "update", "destroy"]



  def index
    if params[:query].present?
      @jobquery = "#" + params[:query]
      sql_query = "name ILIKE :query OR description ILIKE :query OR category ILIKE :query OR duration ILIKE :query"
      @jobs = Job.where(sql_query, query: "%#{params[:query]}%")
    else
      @jobs = policy_scope(Job)
    end
    @users = User.geocoded
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
    p "******************************"
    p @markers
  end

  def show
    authorize @job
  end

  def new
    @job = Job.new
    authorize @job
  end

  def create
    @job = current_user.jobs.new(jobs_params)
    authorize @job

    if @job.save
      redirect_to job_path(@job), notice: "New job has been posted!"
    else
      render :new
    end
  end

  def edit
    authorize @job
  end

  def update
    @job.update(jobs_params)
    authorize @job
    if @job.save
      redirect_to @job
    else
      render :edit
  end
end

  def destroy
    authorize @job
    @job.destroy
    redirect_to jobs_path
  end

  private

  def set_jobs
    @job = Job.find(params[:id])
  end

  def jobs_params
    params.require(:job).permit(:name, :description, :category, :duration)
  end
end
