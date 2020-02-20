class RequestsController < ApplicationController
  before_action :set_user, only: ["new", "create"]

  def new
    @request = Request.new
    @job = Job.find(params[:job_id])
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    authorize @request
    @request.status = "pending"
    if @request.save!
      redirect_to jobs_path
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:status, :user_id, :job_id, :id)
  end
end
