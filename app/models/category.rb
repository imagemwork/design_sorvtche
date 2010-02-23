class Category < ActiveRecord::Base
    
  validates_presence_of :title
	has_many :products, :dependent => :destroy
	has_attached_file :photo, :styles => { :thumb => "180x180>" }
	
	#TODO: Ajeitar titulos
	
end