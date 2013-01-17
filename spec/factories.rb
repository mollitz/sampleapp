FactoryGirl.define do
  factory :user do
    name "Moritz Schaefer"
    email "mollitz@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
