class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      reset_session
      log_in @user
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
  def user_params
      params.require(:user).permit(:username, :password)
  end
end
