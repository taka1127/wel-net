class AddOfficeNameToOffice < ActiveRecord::Migration[5.2]
  def change
    add_column :offices, :office_name, :string
  end
end
