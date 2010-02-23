class Recipe < ActiveRecord::Base

	validates_presence_of :person_name, :name, :ingredients, :preparation, :email, :message => "Não pode ser vazio"
	validates_format_of :email,
                      :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => "parece não ser válido"


  def to_param
    "#{id}-#{name.parameterize}"
  end

end
