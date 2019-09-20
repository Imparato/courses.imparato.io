FactoryBot.define do
  factory :site do
    name { "marseille" }
    domain_name {"coursdetheatremarseille.com:3000/"}
    meta_title {"lol"}
    meta_description {"lol description"}
    banner { File.open("#{Rails.root}/app/assets/images/photo_marseille.jpeg")}
    title {"title test"}
    description {"description test"}
    analytics {"test"}
  end
end
