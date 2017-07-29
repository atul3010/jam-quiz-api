class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :json_request?

  def current_user
    User.find_by(id: auth_token[:user_id]) if user_id_in_token?
  end

  def sign_in_user(user)
    render json: payload(user)
  end

  def payload(user)
    return nil unless user && user.id
    {
      auth_token: JsonWebToken.encode({ user_id: user.id }),
      user: user
    }
  end

  def http_token
     @http_token ||= if request.headers['Authorization'].present?
       request.headers['Authorization'].split(' ').last
     end
  end

  def auth_token
    @auth_token ||= JsonWebToken.decode(http_token)
  end

  def user_id_in_token?
    http_token && auth_token && auth_token[:user_id].to_i
  end

  def send_success_response(data = {}, status = :ok)
    render status: status, json: { status: :success, data: data }
  end

  def send_failure_response(data = {}, status = :bad_request)
    render status: status, json: { status: :fail, data: data }
  end

  def send_error_response(error, status = :unauthorized)
    render status: status, json: { status: :error, message: error }
  end

  def authenticate_request!
    unless user_id_in_token?
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
      return
    end
  end

  protected

  def json_request?
    request.format.json?
  end
end
