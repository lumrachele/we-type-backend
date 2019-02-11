# class Api::V1::UsersController < ApplicationController
#
#   def index
#     @users = User.all
#     render json: @users
#   end
#
#
#
#   def new
#     @user = User.new
#     render json: @user, status: :ok
#   end
#
#   def create
#     @user = User.create(user_params)
#     render json: @user, status: :ok
#
#   end
#
#   def show
#     @user = User.find(params[:id])
#     render json: @user, status: :ok
#   end
#
#   def edit
#     @user = User.find(params[:id])
#     render json: @user, status: :ok
#   end
#
#   def update
#     @user = User.find(params[:id])
#     @user.update(user_params)
#     render json: @user, status: :ok
#   end
#
#
#   def destroy
#     @user.delete
#     @user = User.find(params[:id])
#   end
#
#   private
#
#   def user_params
#     params.require(:user).permit(:name, :email, :id)
#   end
# end
