FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password 'foobar123'
    admin false

    factory :admin do
      email "admin@example.com"
      admin true
    end
  end
end
