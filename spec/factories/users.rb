FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 6, mix_case: true)}
    password_confirmation {password}
    last_name             {'ナギット'}
    first_name            {'けネット'}
    last_name_kana        {'ナギット'}
    first_name_kana       {'ケネット'}
    birth_date            {Faker::Date.birthday}
  end
end
