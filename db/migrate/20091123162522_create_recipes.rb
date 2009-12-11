class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :person_name
      t.string :email
      t.string :name
      t.text :ingredients
      t.text :preparation
      t.text :tip
      t.boolean :passed

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
