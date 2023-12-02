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
    association :user
    # created_at                {'2023-12-02 09:48:51.471740'}
    # updated_at                {'2023-12-02 09:48:51.496879'}
  end
end
