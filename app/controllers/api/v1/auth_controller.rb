class Api::V1::AuthController < ApplicationController
  # skip_before_action :require_login, only: [:create]

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: { error: "Invalid username or password" }
    end
  end

  def autologin
    # byebug
    user = User.find_by(id: session[:user_id])
    render json: user
  end

  def logout
    reset_session
    render json: { message: "Logged out" }
  end

end
# skip_before_action :require_login, only: [:login, :auto_login]

# def login
#   user = User.find_by(email: params[:email])
#   if user && user.authenticate(params[:password])
#       payload = {user_id: user.id}
#       token = encode_token(payload)
#       render json: {user: user, jwt: token, success: "Welcome back, #{user.email}"}
#   else
#       render json: {failure: "Log in failed! Email or password invalid!"}
#   end
# end

# def auto_login
#   if session_user
#     render json: session_user
#   else
#     render json: {errors: "No User Logged In"}
#   end
# end

# def user_is_authed
#   render json: {message: "You are authorized"}
# end