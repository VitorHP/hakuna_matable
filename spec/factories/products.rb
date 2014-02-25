FactoryGirl.define do
  factory :product do
    name "Tchubas"
    description "la rubas sir amet dumas"
    size 5
    price 15.90
    expires_at 2.months.from_now
  end
end
