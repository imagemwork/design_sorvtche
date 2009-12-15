class Product < ActiveRecord::Base

	belongs_to :category
	
	has_attached_file :produto,
                    :styles => { :medium => "300x300>",
                                 :thumb => "150x150>" }

end
