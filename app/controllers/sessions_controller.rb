class SessionsController < ApplicationController
  skip_before_action :ensure_current_user


  def create
    u = User.find_by(username: params[:username])
    if u && u.authenticate(params[:password])
      session[:user_id] = u.id
      redirect_to root_path
    else
      render :new
    end
  end
  
end