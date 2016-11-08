class PostsController < ApplicationController
	def index
		@new_post = Post.new # use in view to render a form
		@all_posts = Post.order(created_at: :desc).all # use to render all posts, sorted in descending order
	end
	def create
		@new_post = Post.new(post_params)
		if @new_post.save
			redirect_to '/'
		else
			render 'new'
		end
	end
	private def post_params
		params.require(:post).permit(:comment)
	end
end
