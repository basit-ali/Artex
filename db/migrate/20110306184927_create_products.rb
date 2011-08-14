class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :id
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
    drop_table :products
  end
end