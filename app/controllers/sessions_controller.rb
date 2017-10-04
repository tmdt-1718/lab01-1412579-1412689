class SessionsController < ApplicationController
    require 'bcrypt'

    def new
		isLoged
	end

	

    def create
        user = User.find_by(username: session_params[:username])
        p user.password_digest
        # If the user exists AND the password entered is correct
        if user && BCrypt::Password.new(user.password_digest) == session_params[:password]
          # Save the user id inside the browser cookie. This is how we keep the user 
          # logged in when they navigate around our website.
            session[:current_user] = user
            flash[:success] = "Login successfully."
            redirect_to :home
        else
        # If user's login doesn't work, send them back to the login form.
            flash[:error] = "Wrong email or password."
            redirect_to :login
        end
      end

	def destroy
			session.delete(:current_user)
			
			redirect_to login_path
	end

	private
	def session_params
		params.require(:session).permit(:username,:password)
	end
end
