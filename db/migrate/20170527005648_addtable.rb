class Addtable < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.bigint :sku
      t.string :name
      t.string :kind
      t.float :price
      t.bigint :upc
      t.string :category, array: true
      t.float :shipping
      t.string :description
      t.string :manufacturer
      t.string :model
      t.string :url
      t.string :image
      t.timestamps
    end
  end
end
