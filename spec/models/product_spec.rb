require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validations' do
    before { FactoryBot.build(:product) }

    it do
      should have_many(:address)
      should validate_presence_of(:name)
      should validate_length_of(:name).is_at_least(3)
      should validate_length_of(:description).is_at_least(3)
      should validate_presence_of(:file1)
    end
  end
end
