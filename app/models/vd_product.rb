class VdProduct < ActiveRecord::Base
  
  validates_presence_of :v_calorico, :carb, :proteinas, :gorduras_t, :gorduras_s, :gordruras_tra, :fibra, :sodio
  has_many :products
end
