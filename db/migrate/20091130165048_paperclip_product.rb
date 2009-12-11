class PaperclipProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :produto_file_name,    :string
    add_column :products, :produto_content_type, :string
    add_column :products, :produto_file_size,    :integer
    add_column :products, :produto_updated_at,   :datetime
  end

  def self.down
  end
end
