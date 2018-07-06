FactoryBot.define do
  factory :user do
    email "alex1@mail.com"
    encrypted_password "qweqwe1"

    trait :admin do
      role 0
    end

    trait :user do
      role 1
    end

    factory :admin_user,   traits: [:admin]
    factory :regular_user, traits: [:user]
  end
end
