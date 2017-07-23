class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :json_request?

  def send_success_response(data = {}, status = :ok)
    render status: status, json: { status: :success, data: data }
  end

  def send_failure_response(data = {}, status = :bad_request)
    render status: status, json: { status: :fail, data: data }
  end

  def send_error_response(error, status = :unauthorized)
    render status: status, json: { status: :error, message: error }
  end

  protected

  def json_request?
    request.format.json?
  end
end
