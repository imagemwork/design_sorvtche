class Textevent < ActiveRecord::Base

  belongs_to :event

  validates_presence_of :title, :location, :description, :city

end
