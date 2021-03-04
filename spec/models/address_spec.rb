require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    before { FactoryBot.build(:address) }

    it do
      should belong_to(:product)
      should validate_presence_of(:name)
      should validate_length_of(:name).is_at_least(3)
    end
  end
end
