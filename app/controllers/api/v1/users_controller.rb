class Api::V1::UsersController < ApplicationController

  # skip_before_action :authorized, only: [:login, :signup]

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(fullname: params[:fullname], email: params[:email], password: params[:password])
    session[:user_id] = user.id
    render json: user
  end

  def login
    # looks for an existing user by their email
    user = User.find_by(email: params[:email])

    # uses the authenticate method from BCrypt to check their hashed password
    if user && user.authenticate(params[:password])
      # if they are authenticated, set the user_id in the session cookie
      session[:user_id] = user.id
      render json: user
    else
      # otherwise, they are not authenticated
      render json: { errors: 'Invalid username or password' }, status: :unauthorized
    end
  end

  # signup creates new User
  def signup
    # user = User.create(fullname: params[:fullname], email: params[:email], password: params[:password])

    if user.valid?
      # if the user is created successfully, set the user_id in the session cookie
      session[:user_id] = user.id
      render json: user, status: :created
    else
      # otherwise, let them sign up again
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  # this action can be used to authenticate a user when the client app first loads (in componentDidMount in App, for example)
  # make sure the authenticate before_action runs before this (since we need the @current_user instance variable set)
  def autologin
    render json: @current_user
  end

  def logout
    session.delete(:user_id)
    render json: { message: 'Logged out' }
  end


  # def show
  #   @user = User.find(params[:id])
  #   if @user
  #     render json: {
  #       user: @user
  #     }
  #   else
  #     render json: {
  #       status: 500,
  #       errors: ['user not found']
  #     }
  #   end
  # end
  
  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     render json: { user: UserSerializer.new(@user) }, status: :created
  #   else
  #     render json: { error: 'failed to create user' }, status: :not_acceptable
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:fullname, :password, :email)
  # end

end
