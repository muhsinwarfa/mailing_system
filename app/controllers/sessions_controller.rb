class SessionsController < ApplicationController
  def new
  end

 
  def create
	  user = User.find_by(andrew_id: params[:sessions][:andrew_id])
	  if user && user.authenticate(params[:sessions][:password])
	  	log_in(user)
	  	redirect_to user
	  else
	  	flash.now[:danger] = "Invalid email/password"
	  	render 'new'
	  end
  end

  def destroy 
  	log_out
  	flash[:notice] = 'Logged out'
  	redirect_to  login_path
  end

  private

  def session_params
    params.require(:sessions).permit(:andrew_id, :password)
  end
end
