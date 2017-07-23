class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      send_success_response(payload(user))
    else
      send_error_response(user.errors.full_messages)
    end
  end  

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,:first_name, :last_name)
  end
end
