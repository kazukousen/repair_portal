class SubCategoriesController < ApplicationController
  def index
  end

  def show
    @sub_categories = SubCategory.where(main_category_id: params[:id])
    @main_categories = MainCategory.all
  end
end
