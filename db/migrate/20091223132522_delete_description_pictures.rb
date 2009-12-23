class DeleteDescriptionPictures < ActiveRecord::Migration
  def self.up
    remove_column :pictures, :description
  end
end
