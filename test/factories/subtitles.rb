FactoryGirl.define do
  factory :subtitle do
    lang { generate :string }
    source { generate :string }
  end
end