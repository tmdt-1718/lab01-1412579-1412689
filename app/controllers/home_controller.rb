class HomeController < ApplicationController
    #before_action :isLogin
    def index
        @posts = Post.joins(:user).select("posts.*","users.fullname")
    end
end
