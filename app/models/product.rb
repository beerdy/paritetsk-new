class Product < ApplicationRecord
  has_many :pictures, :dependent => :destroy
  belongs_to :category
end
