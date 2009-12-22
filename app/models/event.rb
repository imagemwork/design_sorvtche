class Event < ActiveRecord::Base
  
  has_many :pictures
  
  has_attached_file :event, :styles => { :thumb => "150x150>" }
  
end
