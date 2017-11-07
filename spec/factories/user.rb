FactoryGirl.define do

  factory :user do
    first_name 'Oliver'
    last_name 'De Quintos'
    date_of_birth Date.today - 20.years
    gender true
    email 'oliver@example.com'
    password 'password'
    password_confirmation 'password'
  end

end
