FactoryBot.define do
  factory :item do
    name                      { 'Kenn' }
    description               { Faker::Lorem.sentence }
    category_id               { '2' }
    sales_status_id           { '2' }
    shipping_fee_status_id    { '2' }
    prefecture_id             { '2' }
    scheduled_delivery_id     { '2' }
    price                     { '400' }
    image                     { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/test.jpg')) }
    association :user
  end
end
