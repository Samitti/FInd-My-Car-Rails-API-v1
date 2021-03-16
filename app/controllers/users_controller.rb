class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.new(user_params)
    if @user.save
      token = AuthenticationTokenService.encode_token({user_id: @user.id})
      render json: token, status: :created
    else
      render json: { error: @user.errors.full_messages.first }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end