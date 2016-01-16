class SubCategoriesController < ApplicationController
  def index
  end

  def show
    # @sub_categories = SubCategory.all
    @sub_categories = SubCategory.where(main_category_id: params[:id])
  end
end
