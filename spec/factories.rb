FactoryGirl.define do
  factory :user do
    name     "Nazar"
    email    "naz@test.com"
    password "foobar"
    password_confirmation "foobar"
  end
end