class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :name,               null:false
      t.string :ofiice_tel,         null:false
      t.string :postal_code,        null:false
      t.string :prefectures,        null:false
      t.string :house_number,       null:false
      t.string :text
      t.text   :image
      t.timestamps
    end
  end
end
