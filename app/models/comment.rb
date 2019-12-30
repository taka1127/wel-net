class Comment < ApplicationRecord
  belongs_to :information
  belongs_to :office
end
