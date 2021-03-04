class Product < ApplicationRecord
  has_many :address, dependent: :destroy
  validates_associated :address
  
  validates :name, presence: true, length: { minimum: 3 }
  validates :description, length: { minimum: 3 }
  validates :file1, presence: true

  mount_uploader :file1, FileUploader
  mount_uploader :file2, ImageUploader
end
