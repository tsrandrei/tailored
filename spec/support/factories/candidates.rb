# frozen_string_literal: true

FactoryBot.define do
  factory :candidate do
    email { Faker::Internet.safe_email }


  end
end
