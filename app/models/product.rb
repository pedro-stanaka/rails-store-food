class Product < ActiveRecord::Base
	has_many :allergy_type
	has_many :category
	has_many :intolerance_type
	has_many :manufacturer
	has_many :send_type
	has_many :sub_category

  	attr_accessible :allergy_type, :category, :description, :intolerance_type, :manufacturer, :name, :price, :send_type, :sub_category
end
