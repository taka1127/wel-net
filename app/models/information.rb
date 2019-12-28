class Information < ApplicationRecord
  validates :text, presence: true
  belongs_to :office
  has_many :comments
  mount_uploader :image, ImageUploader
end
