class Product < ActiveRecord::Base
  attr_accessible :allergy_type, :category, :description, :intolerance_type, :manufacturer, :name, :price, :send_type, :sub_category
end
