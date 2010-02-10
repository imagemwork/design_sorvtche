class AddNameToVdProduct < ActiveRecord::Migration
  def self.up
    add_column :vd_products, :name, :string
  end

  def self.down
    remove_column :vd_products, :name
  end
end
