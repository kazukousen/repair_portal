class PostsController < ApplicationController
  def index
    # @posts = Post.where(user_id: params[:user_id])
  end

  def show
    @post = Post.find_by(id: params[:id])
    @main_categories = MainCategory.all
  end

  def new
    @sub_category_id = Store.find_by(id: current_user.store_id).sub_category_id
    @main_category_id = SubCategory.find_by(id: @sub_category_id).id
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: '投稿しました'
      # redirect_to @post, notice: '投稿しました'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id, :main_category_id, :sub_category_id)
  end
end
