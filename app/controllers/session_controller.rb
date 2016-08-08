class SessionController < ApplicationController

  def new
    #code
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to show_users_path
    else
      render :new
    end
  end

  def destroy
    sesson[:user_id] = nil
    redirect_to new_session_path
  end



end
