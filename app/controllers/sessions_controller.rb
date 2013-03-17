class SessionsController < ApplicationController
  def new
  end

def create
  email = params[:email].downcase

  user = User.find_by_email(email)


  if user && user.authenticate(params[:password])
    if params[:remember_me]
      cookies.permanent[:auth_token] = user.auth_token
    else
      cookies[:auth_token] = user.auth_token
    end
    redirect_to root_url, :notice => "Logged in!"
  else
   
    redirect_to login_url, :alert => "Invalid email or password"



  end
end

def destroy
  session[:user_id] = nil

  cookies.delete(:auth_token)
  redirect_to root_url, :notice => "Logged out!"
end

end