class StoresController < ApplicationController
  def index
  end

  def show
    @stores = Store.where(sub_category_id: params[:id])
  end
end
