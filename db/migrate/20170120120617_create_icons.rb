class CreateIcons < ActiveRecord::Migration[5.0]
  def change
    create_table :icons do |t|
      t.string :icon
      t.references :Item, foreign_key: true

      t.timestamps
    end
  end
end
