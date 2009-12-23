class Event < ActiveRecord::Base
  
  has_many :pictures, :dependent => :delete_all
  has_one :textevent
  
  validates_presence_of :title
  
  has_attached_file :event, :styles => { :thumb => "150x150>" }
  
end
