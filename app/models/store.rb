class Store < ActiveRecord::Base
  belongs_to :sub_category

  mount_uploader :image, ImageUploader
end
