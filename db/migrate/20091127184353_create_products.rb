class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.integer :weight
      t.text :ingredients
      t.integer :categories_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
