class AlterProducts < ActiveRecord::Migration
  def self.up
    rename_column :products, :categories_id, :category_id
  end
end
