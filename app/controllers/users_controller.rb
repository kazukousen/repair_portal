class UsersController < ApplicationController
  def index
    if params[:store_id]
      @users = User.where(store_id: params[:store_id])
    end

    if params[:post_id]
      @posts = Post.where(user_id: params[:post_id])
      @username = @posts.first.user.name
    end

    @main_categories = MainCategory.all
  end

  def show
    @user = User.find(params[:id])
    @store = Store.find(@user.store_id) if @user.store_id
    @posts = Post.where(user_id: params[:id])
  end
end
