class AddNewFieldsToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :v_calorico, :string
    add_column :products, :carb, :string
    add_column :products, :proteinas, :string
    add_column :products, :gorduras_t, :string
    add_column :products, :gorduras_s, :string
    add_column :products, :gordruras_tra, :string
    add_column :products, :fibra, :string
    add_column :products, :sodio, :string
  end

  def self.down
    remove_column :products, :v_calorico
  end
end
