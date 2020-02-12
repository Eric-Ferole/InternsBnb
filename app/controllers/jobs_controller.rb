class JobsController < ApplicationController
before_action :set_jobs, only: %i(show edit update destroy)

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
    @job = Job.update(jobs_params)
  end

  def destroy
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
