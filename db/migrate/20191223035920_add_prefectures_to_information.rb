class AddPrefecturesToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :prefectures, :string
  end
end
