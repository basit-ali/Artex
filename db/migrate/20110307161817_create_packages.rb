class CreatePackages < ActiveRecord::Migration
  def self.up
    create_table :packages do |t|
      t.integer :id
      t.integer :sub_product_id
      t.string :name
      t.string :description
      t.string :redraws
      t.string :modifications
      t.string :copy_right
      t.string :formats
      t.string :duration
      t.string :delivery
      t.string :general_words
      t.integer :status
      t.timestamps
    end
  end

  def self.down
    drop_table :packages
  end
end
