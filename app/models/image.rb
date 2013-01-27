class Image < ActiveRecord::Base
  attr_accessible :image, :user_id
  mount_uploader :image, ImageUploader

  validates_presence_of :image

  belongs_to :user
end
