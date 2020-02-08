class JobsController < ApplicationController

before_action :set_jobs, only: %i(show create edit destroy)

  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(jobs_params)
      if @job.save
        redirect_to job_path(@job)
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
    @job.destroy
    redirect_to job_path
  end

  private

  def set_jobs
    @job = Job.find(params[:id])
  end

  def jobs_params
    params.require(:jobs).permit(:name, :description, :category)
  end

end
