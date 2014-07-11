FactoryGirl.define do
  factory :user do
    first_name 'Gerardo'
    last_name 'Ortega'
    email 'geraldavid7@gmail.com'
    password '12345678'
    password_confirmation '12345678'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end