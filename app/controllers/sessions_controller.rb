class SessionsController < ApplicationController
    require 'bcrypt'

    def new
		isLoged
	end

	

    def create
        user = User.find_by(username: session_params[:username])
        #p user.password_digest
        if user && BCrypt::Password.new(user.password_digest) == session_params[:password]
            login(user)
            UserMailer.login(user.id).deliver
            redirect_to :home
        else
            flash[:error] = "Tên đăng nhập hoặc mật khẩu không chính xác!"
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
