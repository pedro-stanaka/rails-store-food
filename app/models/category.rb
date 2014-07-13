class Category < ActiveRecord::Base
  belongs_to :product
  has_ancestry
  attr_accessible :description, :name
  attr_accessor :product_id
end
