class UsersController < ApplicationController
  def index
  	@users = User.where(store_id: params[:store_id])
  end
end
