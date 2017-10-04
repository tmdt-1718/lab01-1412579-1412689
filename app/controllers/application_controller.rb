class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def isLogin
    if session[:current_user].nil?
        redirect_to login_path
    end
  end

  def isLoged
    if session[:current_user]
        redirect_to home_path
    end
  end

  
end
