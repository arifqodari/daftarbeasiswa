class SessionsController < ApplicationController
  before_filter :save_login_state, :only => [:login, :login_attempt]

  def login
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username], params[:password])

    if authorized_user
      session[:user_id] = authorized_user.id
      redirect_to root_path
    else
      flash[:notice] = "Invalid username or password"
      render "login"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
