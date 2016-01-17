class UsersController < ApplicationController
  def index
    if params[:store_id]
      @users = User.where(store_id: params[:store_id])
    end

    if params[:post_id]
      @posts = Post.where(user_id: params[:post_id])
      @username = User.find(params[:post_id]).name
    end

    @main_categories = MainCategory.all
  end

  def show
    @user = User.find(params[:id])
    @store = Store.find(@user.store_id) if @user.store_id
    @posts = Post.where(user_id: params[:id])
  end

  def select
    @stores = Store.all
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @store_id = params[:user][:store_id]
    @user.update_attributes(store_id: @store_id)
    redirect_to user_path(@user)
  end
end
