class User < ApplicationRecord
  validates :name, {presence: true}
  validates :nickname, {presence: true}
  validates :image, {presence: true}
  mount_uploader :image, ImageUploader
end
