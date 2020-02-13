class SessionsController < ApplicationController
include SessionsHelper

  def new
  end

  def create
    puts "OUI"
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password_digest])
      session[:user_id] = user.id
      puts "JE SUIS CONNECTER"
      redirect_to dashboard_path
    else
      puts "JE NE SUIS ~~~~PAS~~~~~ CONNECTER"
      redirect_to home_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to home_path
  end

end
