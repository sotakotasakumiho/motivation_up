class User < ApplicationRecord
  validates :name, {presence: true}
  validates :nickname, {presence: true}
  validates :image, {presence: true}
  validates :password, {presence: true}
  mount_uploader :image, ImageUploader

  def posts
    return Post.where(user_id: self.id)
  end
end
