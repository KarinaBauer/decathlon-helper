class CreateItemMins < ActiveRecord::Migration[5.0]
  def change
    create_table :items_min do |t|
      t.integer :articulus
      t.string :name
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
