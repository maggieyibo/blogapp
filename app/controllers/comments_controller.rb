class CommentsController < ApplicationController

	def create
		
      post = Post.find(params[:post_id])
      comment = post.comments.create(comment_params)
      redirect_to post_path(post.id)
    end

    private

    def comment_params
      params.require(:comment).permit(:body, :commenter_attributes =>[:name, :email])
    end



end
