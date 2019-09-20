FactoryBot.define do
  factory :contact do
    association :site
    user { " Colin " }
    email {"colin@overpower.fr"}
    body {"test"}
  end
end
