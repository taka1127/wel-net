class Information < ApplicationRecord
  validates :text,:name, presence: true
  belongs_to :office
  has_many :comments
  has_many :user_comments  # user_commentsテーブルとのアソシエーション
  mount_uploader :image, ImageUploader
end
