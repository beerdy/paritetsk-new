class Category < ApplicationRecord
  has_many :products, :dependent => :destroy
  has_many :galleries, :dependent => :destroy
end
