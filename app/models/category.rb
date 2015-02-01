class Category < ActiveRecord::Base

  	attr_accessible :name

  	after_save :load_into_soulmate
	before_destroy :remove_from_soulmate
 
    validates :name, uniqueness: :true
 
	private 
 
	def load_into_soulmate
		loader = Soulmate::Loader.new("categories")
		loader.add("term" => name, "id" => self.id, "data" => { "link" => Rails.application.routes.url_helpers.category_path(self)})
	end
 
	def remove_from_soulmate
		loader = Soulmate::Loader.new("categories")
	   	loader.remove("id" => self.id)
	end

end