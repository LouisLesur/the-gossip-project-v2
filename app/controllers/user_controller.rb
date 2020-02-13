class UserController < ApplicationController
include SessionsHelper

  def new
  end

  def create
    @user = User.create(first_name: params[:first_name],last_name: params[:last_name],email: params[:email],password: params[:password_digest])
    redirect_to home_path
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(first_name: params[:first_name],last_name: params[:last_name], age: params[:age], description: params[:description], email: params[:email])
      redirect_to dashboard_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to home_path
  end
end
