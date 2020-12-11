class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
  end

  def new
    @post = current_user.posts.build
  end 
    
  private
  def post_params
    params.require(:post).permit(:post)
  end
end
