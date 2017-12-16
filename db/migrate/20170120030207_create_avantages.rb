class CreateAvantages < ActiveRecord::Migration[5.0]
  def change
    create_table :avantages do |t|
      t.string :icon
      t.text :title
      t.text :description
      t.references :Item, foreign_key: true

      t.timestamps
    end
  end
end
