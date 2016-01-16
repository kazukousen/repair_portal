class PostsController < ApplicationController
  def index
    # @posts = Post.where(user_id: params[:user_id])
  end

  def show
    @post = Post.find_by(id: params[:id])
    @main_categories = MainCategory.all
  end
end
