class UserComment < ApplicationRecord
  belongs_to :information  # informationテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
