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

  def login(user)
    session[:current_user] = user
  end
  def getPostIndex
    @posts = Post.joins(:user).order(created_at: :desc).select("posts.*","users.fullname")
  end
  def getPosts
    @posts = Post.joins(:user).where(users: { id:  session[:current_user]["id"]}).select("posts.*","users.fullname")
  end
  def getPost
    @post = Post.find(params[:id])
    if(@post.user_id != session[:current_user]["id"])
        redirect_to post_index_path
    end
  end
  
end
