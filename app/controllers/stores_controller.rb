class StoresController < ApplicationController
  def index
  end

  def show
    @stores = Store.where(sub_category_id: params[:id])
    @main_categories = MainCategory.all
  end
end
