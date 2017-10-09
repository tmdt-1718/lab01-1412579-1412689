class HomeController < ApplicationController
    before_action :getPostIndex, only: [:index,:blogs]
    before_action :getPostView, only: [:index,:blogs]
    before_action :getUserNew, only: [:index,:blogs]
    def index
        
    end
    def abouts

    end
    def albums

    end
    def images
    end
    def blogs

    end
end
