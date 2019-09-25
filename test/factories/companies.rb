FactoryBot.define do
  factory :company do
    association :site
    name { " Compagnie Test " }
    mail {"test@compagnie.fr"}
    phone {"118 218"}
    website {"test.com"}
    description {"description test bla bla bla"}
    address {"13 rue des tests"}
  end
end
