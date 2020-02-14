class UsersController < ApplicationController
before_action :set_users, only: %i(show edit update destroy)

  def show
  end

  def new
  end

  def create
    @user = User.create(users_params)
      if @user.save
        redirect_to user_path(@user)
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_users
    @user = User.find(params[:id])
  end

  def users_params
    params.require(:user).permit(:company_name, :email, :category, :duration, :logo)
  end

end
