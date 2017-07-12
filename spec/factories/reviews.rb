FactoryGirl.define do
  factory :review do
    user_id 1
    product_id 1
    content "Review content here."
    rating 1
  end
end
