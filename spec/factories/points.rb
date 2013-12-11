# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :point do
    player nil
    tournament nil
    amount 1
  end
end
