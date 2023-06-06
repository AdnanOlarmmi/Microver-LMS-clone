module ExceptionHandler
    extend ActiveSupport::Concern
  
    class AuthenticationError < StandardError; end
    class MissingToken < StandardError; end
    class InvalidToken < StandardError; end
  
    included do
      rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
      rescue_from ExceptionHandler::AuthenticationError, with: :unauthorized_request
      rescue_from ExceptionHandler::MissingToken, with: :unprocessable_entity
      rescue_from ExceptionHandler::InvalidToken, with: :unprocessable_entity
  
      private
  
      def unprocessable_entity(error)
        render json: { errors: error.message }, status: :unprocessable_entity
      end
  
      def unauthorized_request(error)
        render json: { errors: error.message }, status: :unauthorized
      end
    end
end
  