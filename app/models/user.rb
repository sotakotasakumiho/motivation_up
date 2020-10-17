class User < ApplicationRecord
  validates :name, {presence: true, uniqueness: true}
  validates :nickname, {presence: true, uniqueness: true}
  validates :image, {presence: true, uniqueness: true}
  validates :password, {presence: true, uniqueness: true}
  mount_uploader :image, ImageUploader
end
