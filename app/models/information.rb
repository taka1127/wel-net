class Information < ApplicationRecord
  validates :text,:name, presence: true
  belongs_to :office
  has_many :comments
  # belongs_to :user
  mount_uploader :image, ImageUploader
end
