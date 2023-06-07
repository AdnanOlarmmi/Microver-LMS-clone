require 'jwt'

class TokenGenerator
  def self.generate_token(user_id)
    payload = { user_id: }
    JWT.encode(payload, 'your_secret_key', 'HS256')
  end
end
