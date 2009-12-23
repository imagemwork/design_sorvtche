class Category < ActiveRecord::Base
  
  validates_presence_of :title

	has_many :products, :dependent => :destroy
	
	# Paperclip
	has_attached_file :photo, :styles => { :thumb => "120x120>" }
	
end