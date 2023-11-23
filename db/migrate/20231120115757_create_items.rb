class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name, null: false
      t.text :description, null: false
      t.text :category, null: false
      t.text :condition, null: false
      t.integer :price, null: false
      t.text :item_image, null: false
      t.timestamps
    end
  end
end
