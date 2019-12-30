class RenameOfficesIdColumnToComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :offices_id, :office_id
  end
end
