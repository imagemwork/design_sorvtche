class Category < ActiveRecord::Base
  has_permalink :id ,:to_param => :title
  validates_presence_of :title
	has_many :products, :dependent => :destroy
	has_attached_file :photo, :styles => { :thumb => "180x180>" } 
end