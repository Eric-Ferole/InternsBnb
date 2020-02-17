class RequestsController < ApplicationController


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

  def update
    request = Request.find(params[:id])
    authorize request
    if request.update!(request_params)
    redirect_to jobs_path
  end
  end


  private

  def request_params
    params.require(:request).permit(:status, :user_id, :job_id, :id)
  end
end
