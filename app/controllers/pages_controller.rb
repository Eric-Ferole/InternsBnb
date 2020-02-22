class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @jobscount = Job.all.count
  end
end
