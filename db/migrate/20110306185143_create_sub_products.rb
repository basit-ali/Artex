class CreateSubProducts < ActiveRecord::Migration
  def self.up
    create_table :sub_products do |t|
      t.integer :id
      t.integer :product_id
      t.integer :package_id
      t.string :name
      t.string :slug
      t.string :description
      t.string :image
      t.float :price
      t.integer :status
      t.timestamps
    end
  end

  def self.down
    drop_table :sub_products
  end
end
