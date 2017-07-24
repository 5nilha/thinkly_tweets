class PostsController < ApplicationController
  
  def index
    @new_post = Post.new #We'll use @new_post in the view to render a form.
    @all_posts = Post.order(created_at: :desc).all #We'll use @all_posts to render a list of all posts, sorted in descending order.
  end
  
  def create
    @new_post = Post.new(post_params)
    if @new_post.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
    
  private 
  def post_params
    params.require(:post).permit(:comment)
  end
  
  
end
