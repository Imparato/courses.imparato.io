FactoryBot.define do
  factory :cross_page do
    association :site
    slug { "impro-a-marseille" }
    title { "Cours d'improvisation à Marseille" }
    description { "Trouvez les meilleurs cours d'improvisation sur Marseille facilement" }
    active { "true" }
    meta_title { "Marseille PACA Bouche du Rhone 13" }
    meta_description { "Les meilleurs cours du sud sont sur coursamarseille" }
    banner { File.open("#{Rails.root}/app/assets/images/photo_marseille.jpeg")}

  end
end
