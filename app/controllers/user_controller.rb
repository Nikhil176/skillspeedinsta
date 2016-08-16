class UserController < ApplicationController
  def new
  @user = User.email
  end
  
  def index
  @users = User.all
  end
 
  def show
  @user = User.find(params[:id])
  end

  def create
  @user = User.find(params[:id])
  flash[:success] = "Your account was created successfully"
  redirect_to user_session
  end

  def update
  @user = User.find(params[:id])
  if @user.update(user_params)
  flash[:success] = "Your account was updated successfully"
  redirect_to post_path
  else
  render 'edit' 
  end
end
