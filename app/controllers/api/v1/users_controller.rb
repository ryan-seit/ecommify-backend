class Api::V1::UsersController < ApplicationController

  # skip_before_action :require_login, only: [:create]

  def index
    users = User.all
    render json: users
  end
  
  def create
    user = User.create(fullname: params[:fullname], email: params[:email], password: params[:password])
    session[:user_id] = user.id
    render json: user, status: :created
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :password, :email)
  end

end
#   before_action :set_user, only: [:show, :update]

#   def index
#     @users = User.all
#     render json: @users
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.valid? && @user.save
#       render json: @user
#     else
#       render json: @user.errors, status: 400
#     end
#   end

#   def show
#     render json: @user
#   end

#   def update
#     if @user.update(user_params)
#       render json: @user
#     else
#       render json: @user.errors, status: 400
#     end
#   end

#   def destroy
#     @user.destroy
#   end

#   def find
#     @user = User.find_by(email: params[:user][:email])
#     if @user
#       render json: @user
#     else
#       @errors = @user.errors.full_messages
#       render json: @errors
#     end
#   end

#   private

#     def set_user
#       @user = User.find_by(id: params[:id])
#     end

#     def user_params
#       params.require(:user).permit(:fullname, :email, :password)
#     end

# end
