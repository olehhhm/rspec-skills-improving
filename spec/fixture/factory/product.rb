# This will guess the Prodct class
FactoryBot.define do
  factory :product do
    name { "Axe" }
    description  { "Here's Johnny!" }
    is_private { false }
    file1 { "filename.csv" }
    file2 { "filename.jpg" }
    factory :product_with_address do
      after(:create) do |address|
        create(:address, product: address)
      end
    end
  end
end