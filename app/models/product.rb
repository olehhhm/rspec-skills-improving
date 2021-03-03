class Product < ApplicationRecord
  has_many :address, dependent: :destroy
  validates_associated :address
  
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :description, length: { minimum: 3 }
  validates :is_private, inclusion: [true, false]
  validates :is_private, exclusion: [nil]
  validates :file1, presence: true

end
