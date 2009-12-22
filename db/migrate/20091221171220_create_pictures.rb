class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.string :name
      t.text :description
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
