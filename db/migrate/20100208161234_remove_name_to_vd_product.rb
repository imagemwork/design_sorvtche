class RemoveNameToVdProduct < ActiveRecord::Migration
  def self.up
  remove_column :vd_products, :name
  end

end
