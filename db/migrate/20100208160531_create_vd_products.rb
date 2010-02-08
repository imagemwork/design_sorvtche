class CreateVdProducts < ActiveRecord::Migration
  def self.up
    create_table :vd_products do |t|
      t.string :v_calorico
      t.string :carb
      t.string :proteinas
      t.string :gorduras_t
      t.string :gorduras_s
      t.string :gordruras_tra
      t.string :fibra
      t.string :sodio

      t.timestamps
    end
  end

  def self.down
    drop_table :vd_products
  end
end
