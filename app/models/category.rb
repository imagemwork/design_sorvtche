class Category < ActiveRecord::Base

	has_many :products, :dependent => :destroy
	
	# Paperclip
	has_attached_file :photo, :styles => { :thumb => "120x120>" }
	
end