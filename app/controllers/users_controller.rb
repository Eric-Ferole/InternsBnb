class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    # All the jobs posted by the user (intern)
    @incoming_requests = @user.jobs.map do |job|
      job.requests
    end
    @incoming_requests.flatten!
  end
end
