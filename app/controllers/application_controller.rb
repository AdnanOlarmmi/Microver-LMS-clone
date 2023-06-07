require 'json_web_token'

class ApplicationController < ActionController::API
  include ExceptionHandler

  before_action :authorize_request

  private

  def authorize_request
    header = request.headers['Authorization']
    raise ExceptionHandler::MissingToken unless header

    token = header.split.last
    decoded_token = JsonWebToken.decode(token)
    @current_user = User.find(decoded_token[:user_id])
  rescue ActiveRecord::RecordNotFound, JWT::DecodeError => e
    raise ExceptionHandler::AuthenticationError, e.message
  end
end
