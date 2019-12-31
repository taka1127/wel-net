class Comment < ApplicationRecord
  belongs_to :information
  belongs_to :office
  # belongs_to :user
end
