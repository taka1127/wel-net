class AddCitiesToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :cities, :string
  end
end
