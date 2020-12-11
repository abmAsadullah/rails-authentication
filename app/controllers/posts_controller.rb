class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:post)
  end
end
