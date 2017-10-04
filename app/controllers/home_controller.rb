class HomeController < ApplicationController
    def index
        isLogin
        @posts = Post.joins(:user).select("posts.*","users.fullname")
    end
end
