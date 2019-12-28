class RenameOfficesIdColumnToInformations < ActiveRecord::Migration[5.2]
  def change
    rename_column :information, :offices_id, :office_id
  end
end
