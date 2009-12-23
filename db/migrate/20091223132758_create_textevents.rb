class CreateTextevents < ActiveRecord::Migration
  def self.up
    create_table :textevents do |t|
      t.string :title
      t.string :location
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :textevents
  end
end
