# frozen_string_literal: true

puts "creating coursabruxelles as a site"

coursabruxelles = Site.new(
  domain_name:      "coursdetheatrebruxelles.com",
  name:             "Cours de théâtre à bruxelles",
  meta_title:       "Trouvez les meilleurs cours à bruxelles",
  meta_description: "meta_description à remplir",
  title:            "Souhaitez-vous vous afficher sous les projecteurs?",
  description:      "L’art théâtral est une activité accessible à tous ses adeptes. Il fait partie des principales sources de divertissement, rien que pour se débarrasser complètement du stress et retrouver la confiance en soi. Sans doute que les cours de théâtre sont de réelles occasions permettant aux participants de jouer sur leurs sentiments, d’apprendre à parler à haute voix, de pleurer ou de rire en toute liberté…",
  active:           "true",
  analytics:        "2",
)
url = "https://images.unsplash.com/photo-1552678635-c2b790c97c99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"
coursabruxelles.remote_banner_url = url
coursabruxelles.save!

puts "Creating Companies"

tetard = Company.create!(
  name:        "Théâtre du Tétard",
  address:     "33 Rue Ferrari, 13005 bruxelles",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "L’établissement propose chaque lundi deux cours de théâtre
  qui sont réservés exclusivement aux adultes. L’accent est mis sur
  la stimulation de la créativité chez les participants. Les professeurs,
  dont *Anabel Gransagne et David Simon*, organisent, pour ce faire, des exercices.
  La formation dure, en effet, une année et s’effectue en plusieurs étapes allant
  de l’initiation jusqu’à l’approfondissement.",
  site:        coursabruxelles,
  active:      "true",
)

roche = Company.create!(
  name:        "Ecole Sylvia Roche",
  address:     "19, quai de Rive Neuve, 13007 bruxelles",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "Ecole Sylvia Roche est un établissement dédié à l’art dramatique. L’équipe propose une formation qui dure trois années, des stages ainsi que des ateliers. Les adultes peuvent s’y inscrire pour suivre les cours complets.",
  site:        coursabruxelles,
  active:      "true",
)

merlan = Company.create!(
  name:        "Théâtre du Petit Merlan",
  address:     "39 Avenue du Merlan, 13014 bruxelles",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "Petite salle avec une scène en damier noir et blanc dédiée à la comédie, avec cours de théâtre pour tout âge. L’excellente Danièle De Cesare y prodigue, les lundis et mardis, un cours d’une rare qualité.",
  site:        coursabruxelles,
  active:      "true",
)

divadlo = Company.create!(
  name:        "Divadlo Théâtre",
  address:     "69, rue sainte cécile, 13005 bruxelles",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "L’établissement organise une formation à la pratique théâtrale pour les adultes et enfants. Les cours sont accessibles *à tous les niveaux* allant des débutants jusqu’aux avancés.",
  site:        coursabruxelles,
  active:      "true",
)

orchestra = Company.create!(
  name:        "Orchestra Studio",
  address:     "17, rue Pierre Dupré, 13008 bruxelles",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "L’Orchestra Studio est une bonne adresse pour suivre des cours de création. Vous pouvez aussi vous y souscrire pour participer à cours de danse ou de théâtre. Il s’agit également d’un établissement dédié aux stages pour les tout-petits, marmots et adultes. A noter la présence de l’excellente Marion Marion Nguyen Thé, Comédienne et chanteuse, qui dispense les cours de Théâtre. Depuis cette année, Orchestra-Pro propose une formation professionnalisante sur 2 ans pour former aux métiers de la scène, du chant, du théâtre etc etc ..",
  site:        coursabruxelles,
  active:      "true",
)

cours = Company.create!(
  name:        "Théâtre sur Cours",
  address:     "2 Boulevard Cauvin, 13009 bruxelles",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "Enfants, adolescents et adultes y sont les bienvenus pour suivre des cours assurés par une équipe des professeurs chevronnés. Des stages, ateliers et cours de chant y sont également organisés.",
  site:        coursabruxelles,
  active:      "true",
)

puts "Creating CrossPages"
# url = "https://images.unsplash.com/photo-1544391641-ccb92906e11c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"

bruxellesimpro = CrossPage.new(
  slug:             "impro-a-bruxelles",
  title:            "Cours d'improvisation à bruxelles",
  description:      "Trouvez les meilleurs cours d'improvisation sur bruxelles facilement",
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)
bruxellesimpro.remote_banner_url = url
bruxellesimpro.save!

bruxellestheatre = CrossPage.new(
  slug:             "theatre-a-bruxelles",
  title:            "Cours de théâtre à bruxelles",
  description:      "Trouvez les meilleurs cours d'improvisation sur bruxelles facilement",
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)

bruxellestheatre.remote_banner_url = url
bruxellestheatre.save!

bruxelleslundi = CrossPage.new(
  slug:             "lundi-a-bruxelles",
  title:            "Cours sur bruxelles le lundi",
  description:      "Trouvez les meilleurs cours le lundi sur bruxelles facilement",
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)
bruxelleslundi.remote_banner_url = url
bruxelleslundi.save!

bruxellesmardi = CrossPage.new(
  slug:             "mardi-a-bruxelles",
  title:            "Cours sur bruxelles le mardi",
  description:      "Trouvez les meilleurs cours le mardi sur bruxelles facilement",
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)
bruxellesmardi.remote_banner_url = url
bruxellesmardi.save!

bruxellesmercredi = CrossPage.new(
  slug:             "mercredi-a-bruxelles",
  title:            "Cours sur bruxelles le mercredi",
  description:      "Trouvez les meilleurs cours le mercredi sur bruxelles facilement",
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)
bruxellesmercredi.remote_banner_url = url
bruxellesmercredi.save!

bruxellesjeudi = CrossPage.new(
  slug:             "jeudi-a-bruxelles",
  title:            "Cours sur bruxelles le jeudi",
  description:      "Trouvez les meilleurs cours le jeudi sur bruxelles facilement",
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)
bruxellesjeudi.remote_banner_url = url
bruxellesjeudi.save!

bruxellesvendredi = CrossPage.new(
  slug:             "vendredi-a-bruxelles",
  title:            "Cours sur bruxelles le vendredi",
  description:      "Trouvez les meilleurs cours le vendredi sur bruxelles facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_bruxelles.jpeg")),
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)
bruxellesvendredi.remote_banner_url = url
bruxellesvendredi.save!

bruxellesweekend = CrossPage.new(
  slug:             "weekend-a-bruxelles",
  title:            "Cours sur bruxelles le weekend",
  description:      "Trouvez les meilleurs cours le weekend sur bruxelles facilement",
  active:           "true",
  meta_title:       "bruxelles PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabruxelles",
  site:             coursabruxelles,
)
bruxellesweekend.remote_banner_url = url
bruxellesweekend.save!

# puts "Creating tags"

theatre = Tag.find_by(name: "théâtre")
impro = Tag.find_by(name: "impro")
lundi = Tag.find_by(name: "lundi")
mardi = Tag.find_by(name: "mardi")
mercredi = Tag.find_by(name: "mercredi")
jeudi = Tag.find_by(name: "jeudi")
vendredi = Tag.find_by(name: "vendredi")
week_end = Tag.find_by(name: "week end")

puts "Adding tags to existing companies and crosspages"

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
bruxellesimpro.tags << impro
bruxelleslundi.tags << lundi
bruxellestheatre.tags << theatre
bruxellesmardi.tags << mardi
bruxellesmercredi.tags << mercredi
bruxellesjeudi.tags << jeudi
bruxellesvendredi.tags << vendredi
bruxellesweekend.tags << week_end

puts "All done"
