class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :id
      t.integer :user_id
      t.integer :package_id
      t.string :logo_text
      t.string :color
      t.string :description
      t.string :usage
      t.string :upload

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
