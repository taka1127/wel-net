class AddOfficesIdToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :offices_id, :integer
  end
end
