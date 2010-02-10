class Product < ActiveRecord::Base

	belongs_to :category
	belongs_to :vd_product
	
	validates_presence_of :code, :name, :weight, :ingredients
	validates_uniqueness_of :code
	
	has_attached_file :produto,
                    :styles => { :medium => "300x300>",
                                 :thumb => "180x180>" }
           
  def self.search(search)
     if search
       find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
     else
       find(:all)
     end
  end

end
