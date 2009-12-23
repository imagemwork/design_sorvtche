class Product < ActiveRecord::Base

	belongs_to :category
	
	validates_presence_of :code, :name, :weight, :ingredients
	validates_uniqueness_of :code
	
	has_attached_file :produto,
                    :styles => { :medium => "300x300>",
                                 :thumb => "150x150>" }

end
