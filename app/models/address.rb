class Address < ApplicationRecord
  belongs_to :product
  
  validates :name, presence: true, length: { minimum: 3 }
end
