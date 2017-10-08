class CommentController < ApplicationController
    def create
        post = Post.friendly.find(params[:id])
        @comment = Comment.new(post_id: post.id,content: params.require(:comment).permit(:content)["content"], user_id: session[:current_user]["id"]);
        if @comment.save
            UserMailer.comment(post.user_id,session[:current_user]["fullname"]).deliver
            redirect_to post_path(post.slug)
        end
    end
end
