FactoryGirl.define do
  factory :property do
    agency_id 1
    sequence(:title) { |i| "Apartment #{i}"}
    price "2000000"
    description "Apartment description"
    address "Apartment Address XYZ"
    city "Defaut City Name"
    property_type :rental

    trait :apt do
      description "Affordable modern apartment. All basic services included. No pets allowed."
    end

    trait :dpx do
      description "Luxurious duplex house. Pool and Gym available. Pets welcome."
    end

    trait :ny do
      city "New York"
    end

    trait :la do
      city "Los Angeles"
    end

    trait :residential do
      property_type :residential
    end
    trait :rental do
      property_type :rental
    end
    trait :commercial do
      property_type :commercial
    end
  end
end
