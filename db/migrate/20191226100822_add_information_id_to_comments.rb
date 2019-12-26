class AddInformationIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :information_id, :integer
  end
end
