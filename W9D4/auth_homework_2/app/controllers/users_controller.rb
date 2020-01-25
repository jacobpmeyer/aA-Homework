class UsersController < ApplicationController
  before_action :require_current_user!, except [:create, :new]

  def create
    @user = User.new(params[:user])

    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] << "Did not save"
      render flash.now[:errors]
  end

  def new
    @user = User.new
  end

  private 
  def user_params
    params.require(:user).permit(:session_token, :password, :username)
  end
end