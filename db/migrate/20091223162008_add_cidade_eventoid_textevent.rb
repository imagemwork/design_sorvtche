class AddCidadeEventoidTextevent < ActiveRecord::Migration
  def self.up
    add_column :textevents, :city, :string
    add_column :textevents, :event_id, :integer
  end
end
