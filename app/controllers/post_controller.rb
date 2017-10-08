class PostController < ApplicationController
    before_action :isLogin, only: [:new,:index]
    before_action :getPosts, only: [:index]
    before_action :showPost, only: [:show]
    before_action :getPostView, only: [:index,:show]
    before_action :getUserNew, only: [:index,:show]
    def index
    end
    def show
        @home = 1
        
    end
    def new
        @post = Post.new
    end
    def create
        @post = Post.new(title: post_params[:title], thumbnail: post_params[:thumbnail],  content: post_params[:content], user_id: session[:current_user]["id"]);
        if @post.save
            flash[:success] = "Đã thêm bài viết thành công!"
            redirect_to post_index_path
        else
            render :action => :new
        end
    end
    def edit
        @post = Post.find(params[:id])
    end
    def update
        puts params
        @post = Post.friendly.find(params[:id])
        if @post.update_attributes(post_params)
          # Handle a successful update.
          flash[:success] = "Đã sửa bài viết #{@post.id} thành công!"
          redirect_to post_index_path

        else
          render 'edit'
        end
    end
    private
    def post_params
        puts params
		params.require(:post).permit(:title,:content,:thumbnail)
    end
    def showPost
        
        @post = Post.friendly.find(params[:id])
        
        if @post
            @user = User.find(@post.user_id)
            @post.increment!(:view)
            @comments = Comment.joins(:user).where(comments: { post_id:  @post.id}).select("comments.*","users.fullname")
            puts @comments
        end
    end
end
