class SessionsController < ApplicationController

  def new

  end

  def create
    # user = User.find_by(email: params[:session][:email].downcase)
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash.now[:alert] = "Incorrect credentials"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have successfully logged out"
    redirect_to root_path
  end

end