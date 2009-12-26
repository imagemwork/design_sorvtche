class Picture < ActiveRecord::Base
  
  belongs_to :event
  
  validates_presence_of :name
  
  has_attached_file :picture, :styles => { :large => "550x410", :thumb => "150x150>" }
  
end
