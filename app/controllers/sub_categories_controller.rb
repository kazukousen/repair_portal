class SubCategoriesController < ApplicationController
  def index
  end

  def show
    @sub_categories = SubCategory.where(main_category_id: params[:id])
    @main_categories = MainCategory.all

    add_breadcrumb @main_categories.find_by(id: params[:id]).name, :root_path
  end
end
