# app/controllers/auth_controller.rb

class AuthController < ApplicationController
    def create
      # Extract the user's email and password from the request parameters
      email = params[:email]
      password = params[:password]
  
      # Create a new user record in the database
      user = User.create(email: email, password: password)
  
      # Generate a JWT token for the new user
      token = TokenGenerator.generate_token(user.id)
  
      # Return the token as the response
      render json: { token: token }
    end
  
    def login
      # Extract the user's email and password from the request parameters
      email = params[:email]
      password = params[:password]
  
      # Find the user record in the database based on the email
      user = User.find_by(email: email)
  
      # Verify the password against the user record
      if user && user.authenticate(password)
        # Generate a JWT token for the authenticated user
        token = TokenGenerator.generate_token(user.id)
  
        # Return the token as the response
        render json: { token: token }
      else
        # Return an error response if authentication fails
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  end
  