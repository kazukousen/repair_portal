class StoresController < ApplicationController
  def index
  end

  def show
    @stores = Store.where(sub_category_id: params[:id])
    @main_categories = MainCategory.all
  end

  def new
    @store = Store.new
    @sub_categories = SubCategory.all
  end

  def create
    sub_category = SubCategory.find(params[:store][:sub_category_id])
    @store = sub_category.stores.build(store_params)
    @store.save
    current_user.update_attributes(store_id: @store.id)
    redirect_to user_path(current_user)
  end

  private

    def store_params
      params.require(:store).permit(:name, :address, :phone_number, :body, :image)
    end
end
