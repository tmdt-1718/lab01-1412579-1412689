class UserController < ApplicationController
    def new
        @user = User.new
    end
    def create
        user = User.find_by(username: session_params[:username])
        if user
            flash[:error] = "Tên tài khoản đã tồn tại!"
            render :action => :new
        else
            @user = User.new(session_params);
            if @user.save
                redirect_to login_path
            else
                render :action => :new
            end
        end
    end
    private
    def session_params
		params.require(:user).permit(:username,:fullname,:email,:password,:password_confirmation)
	end
end
