class Category < ActiveRecord::Base

	has_many :products
	
	# Paperclip
	has_attached_file :photo, :styles => { :thumb => "120x120>" }
	
end
