class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :capacity
      t.integer :letf_quantity
      t.references :supplier, foreign_key: true
      t.integer :full_stock

      t.timestamps
    end
  end
end
