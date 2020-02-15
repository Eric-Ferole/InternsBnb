class JobsController < ApplicationController
  before_action :set_jobs, only: %i(show edit update destroy)

  def index
    @jobs = Job.all
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query OR category ILIKE :query OR duration ILIKE :query"
      @jobs = Job.where(sql_query, query: "%#{params[:query]}%")
    else
      @jobs = Job.all
    end
  end

  def show

  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)
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

  def get_search_suggestions(query)

  end
end
