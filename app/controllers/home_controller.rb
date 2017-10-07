class HomeController < ApplicationController
    before_action :getPostIndex, only: [:index]
    def index
        p @posts
    end
end
