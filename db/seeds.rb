AdminUser.create(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?

puts "destroying all existing seeds to build new ones"

CrossPage.destroy_all
Company.destroy_all
Tag.destroy_all
Site.destroy_all

puts "AdminUser created, creating seeds"

puts "creating coursamarseille as a site"

coursamarseille = Site.create!(
  domain_name:      "coursdetheatremarseille.com",
  name:             "Cours de théâtre à Marseille",
  meta_title:       "Trouvez les meilleurs cours à Marseille",
  meta_description: "meta_description à remplir",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  title:            "Souhaitez-vous vous afficher sous les projecteurs, notamment devant la caméra pour faire valoir vos talents en voix ou tragédies ?",
  description:      "L’art théâtral est une activité accessible à tous ses adeptes. Il fait partie des principales sources de divertissement, rien que pour se débarrasser complètement du stress et retrouver la confiance en soi. Sans doute que les cours de théâtre sont de réelles occasions permettant aux participants de jouer sur leurs sentiments, d’apprendre à parler à haute voix, de pleurer ou de rire en toute liberté…",
  active:           "true",
  analytics:        "2",
)

puts "Creating Companies"

tetard = Company.create!(
  name:        "Théâtre du Tétard",
  address:     "33 Rue Ferrari, 13005 Marseille",
  mail:        "mail@gmail.com",
  description: "L’établissement propose chaque lundi deux cours de théâtre
  qui sont réservés exclusivement aux adultes. L’accent est mis sur
  la stimulation de la créativité chez les participants. Les professeurs,
  dont Anabel Gransagne et David Simon, organisent, pour ce faire, des exercices.
  La formation dure, en effet, une année et s’effectue en plusieurs étapes allant
  de l’initiation jusqu’à l’approfondissement.",
  site:        coursamarseille,
)

roche = Company.create!(
  name:        "Ecole Sylvia Roche",
  address:     "19, quai de Rive Neuve, 13007 Marseille",
  mail:        "mail@gmail.com",
  description: "Ecole Sylvia Roche est un établissement dédié à l’art dramatique. L’équipe propose une formation qui dure trois années, des stages ainsi que des ateliers. Les adultes peuvent s’y inscrire pour suivre les cours complets.",
  site:        coursamarseille,
)

merlan = Company.create!(
  name:        "Théâtre du Petit Merlan",
  address:     "39 Avenue du Merlan, 13014 Marseille",
  mail:        "mail@gmail.com",
  description: "Petite salle avec une scène en damier noir et blanc dédiée à la comédie, avec cours de théâtre pour tout âge. L’excellente Danièle De Cesare y prodigue, les lundis et mardis, un cours d’une rare qualité.",
  site:        coursamarseille,
)

divadlo = Company.create!(
  name:        "Divadlo Théâtre",
  address:     "69, rue sainte cécile, 13005 Marseille",
  mail:        "mail@gmail.com",
  description: "L’établissement organise une formation à la pratique théâtrale pour les adultes et enfants. Les cours sont accessibles à tous les niveaux allant des débutants jusqu’aux avancés.",
  site:        coursamarseille,
)

orchestra = Company.create!(
  name:        "Orchestra Studio",
  address:     "17, rue Pierre Dupré, 13008 Marseille",
  mail:        "mail@gmail.com",
  description: "L’Orchestra Studio est une bonne adresse pour suivre des cours de création. Vous pouvez aussi vous y souscrire pour participer à cours de danse ou de théâtre. Il s’agit également d’un établissement dédié aux stages pour les tout-petits, marmots et adultes. A noter la présence de l’excellente Marion Marion Nguyen Thé, Comédienne et chanteuse, qui dispense les cours de Théâtre. Depuis cette année, Orchestra-Pro propose une formation professionnalisante sur 2 ans pour former aux métiers de la scène, du chant, du théâtre etc etc ..",
  site:        coursamarseille,
)

cours = Company.create!(
  name:        "Théâtre sur Cours",
  address:     "2 Boulevard Cauvin, 13009 Marseille",
  mail:        "mail@gmail.com",
  description: "Enfants, adolescents et adultes y sont les bienvenus pour suivre des cours assurés par une équipe des professeurs chevronnés. Des stages, ateliers et cours de chant y sont également organisés.",
  site:        coursamarseille,
)

puts "Creating CrossPages"

marseilleimpro = CrossPage.create!(
  slug:             "impro-a-marseille",
  title:            "Cours d'improvisation à Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "true",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)
marseilletheatre = CrossPage.create!(
  slug:             "theatre-a-marseille",
  title:            "Cours d'improvisation à Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "true",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)

marseillelundi = CrossPage.create!(
  slug:             "lundi-a-marseille",
  title:            "Cours d'improvisation sur Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "true",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)
marseillemardi = CrossPage.create!(
  slug:             "cours-de-theatre-mardi",
  title:            "Cours d'improvisation à Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "true",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)
marseillemercredi = CrossPage.create!(
  slug:             "cours de theatre mercredi",
  title:            "Cours d'improvisation à Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "true",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)
marseillejeudi = CrossPage.create!(
  slug:             "impro-a-marseille",
  title:            "Cours d'improvisation à Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "false",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)
marseillevendredi = CrossPage.create!(
  slug:             "impro-a-marseille",
  title:            "Cours d'improvisation à Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "true",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)
marseilleweekend = CrossPage.create!(
  slug:             "impro-a-marseille",
  title:            "Cours d'improvisation à Marseille",
  description:      "Trouvez les meilleurs cours d'improvisation sur Marseille facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  active:           "true",
  meta_title:       "Marseille PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursamarseille",
  site:             coursamarseille,
)

puts "Creating tags"

theatre = Tag.create!(name: "théâtre")
impro = Tag.create!(name: "impro")
lundi = Tag.create!(name: "lundi")
mardi = Tag.create!(name: "mardi")
mercredi = Tag.create!(name: "mercredi")
jeudi = Tag.create!(name: "jeudi")
vendredi = Tag.create!(name: "vendredi")
week_end = Tag.create!(name: "week end")

puts "adding tags to existing companies and crosspages"

tetard.tags << lundi
tetard.tags << jeudi
tetard.tags << theatre
roche.tags << theatre
roche.tags << mercredi
orchestra.tags << mardi
orchestra.tags << lundi
orchestra.tags << vendredi
orchestra.tags << impro
merlan.tags << mercredi
merlan.tags << impro
divadlo.tags << jeudi
divadlo.tags << theatre
cours.tags << vendredi
cours.tags << impro
marseilleimpro.tags << impro
marseillelundi.tags << lundi
marseilletheatre.tags << theatre
marseillemardi.tags << mardi
marseillemercredi.tags << mercredi
marseillejeudi.tags << jeudi
marseillevendredi.tags << vendredi
marseilleweekend.tags << week_end

puts "All done"
