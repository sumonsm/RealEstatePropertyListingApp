FactoryGirl.define do
  factory :agency do
    sequence(:title) { |i| "Agency #{i}"}
  end
end
