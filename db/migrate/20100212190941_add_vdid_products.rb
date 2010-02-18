class AddVdidProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :vd_id, :integer  
  end
end
