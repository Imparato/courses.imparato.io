# frozen_string_literal: true

puts "creating coursabordeaux as a site"

coursabordeaux = Site.new(
  domain_name:      "coursdetheatrebordeaux.com",
  name:             "Cours de théâtre à bordeaux",
  meta_title:       "Trouvez les meilleurs cours à bordeaux",
  meta_description: "meta_description à remplir",
  title:            "Souhaitez-vous vous afficher sous les projecteurs?",
  description:      "L’art théâtral est une activité accessible à tous ses adeptes. Il fait partie des principales sources de divertissement, rien que pour se débarrasser complètement du stress et retrouver la confiance en soi. Sans doute que les cours de théâtre sont de réelles occasions permettant aux participants de jouer sur leurs sentiments, d’apprendre à parler à haute voix, de pleurer ou de rire en toute liberté…",
  active:           "true",
  analytics:        "2",
)
url = "https://images.unsplash.com/photo-1560895517-08bdabc9c17a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80"
coursabordeaux.remote_banner_url = url
coursabordeaux.save!

puts "Creating Companies"

tetard = Company.create!(
  name:        "Théâtre du Tétard",
  address:     "33 Rue Ferrari, 13005 bordeaux",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "L’établissement propose chaque lundi deux cours de théâtre
  qui sont réservés exclusivement aux adultes. L’accent est mis sur
  la stimulation de la créativité chez les participants. Les professeurs,
  dont *Anabel Gransagne et David Simon*, organisent, pour ce faire, des exercices.
  La formation dure, en effet, une année et s’effectue en plusieurs étapes allant
  de l’initiation jusqu’à l’approfondissement.",
  site:        coursabordeaux,
  active:      "true",
)

roche = Company.create!(
  name:        "Ecole Sylvia Roche",
  address:     "19, quai de Rive Neuve, 13007 bordeaux",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "Ecole Sylvia Roche est un établissement dédié à l’art dramatique. L’équipe propose une formation qui dure trois années, des stages ainsi que des ateliers. Les adultes peuvent s’y inscrire pour suivre les cours complets.",
  site:        coursabordeaux,
  active:      "true",
)

merlan = Company.create!(
  name:        "Théâtre du Petit Merlan",
  address:     "39 Avenue du Merlan, 13014 bordeaux",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "Petite salle avec une scène en damier noir et blanc dédiée à la comédie, avec cours de théâtre pour tout âge. L’excellente Danièle De Cesare y prodigue, les lundis et mardis, un cours d’une rare qualité.",
  site:        coursabordeaux,
  active:      "true",
)

divadlo = Company.create!(
  name:        "Divadlo Théâtre",
  address:     "69, rue sainte cécile, 13005 bordeaux",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "L’établissement organise une formation à la pratique théâtrale pour les adultes et enfants. Les cours sont accessibles *à tous les niveaux* allant des débutants jusqu’aux avancés.",
  site:        coursabordeaux,
  active:      "true",
)

orchestra = Company.create!(
  name:        "Orchestra Studio",
  address:     "17, rue Pierre Dupré, 13008 bordeaux",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "L’Orchestra Studio est une bonne adresse pour suivre des cours de création. Vous pouvez aussi vous y souscrire pour participer à cours de danse ou de théâtre. Il s’agit également d’un établissement dédié aux stages pour les tout-petits, marmots et adultes. A noter la présence de l’excellente Marion Marion Nguyen Thé, Comédienne et chanteuse, qui dispense les cours de Théâtre. Depuis cette année, Orchestra-Pro propose une formation professionnalisante sur 2 ans pour former aux métiers de la scène, du chant, du théâtre etc etc ..",
  site:        coursabordeaux,
  active:      "true",
)

cours = Company.create!(
  name:        "Théâtre sur Cours",
  address:     "2 Boulevard Cauvin, 13009 bordeaux",
  mail:        "mail@gmail.com",
  phone:       "04 09 87 98 98",
  website:     "www.sitedutheatre.com",
  description: "Enfants, adolescents et adultes y sont les bienvenus pour suivre des cours assurés par une équipe des professeurs chevronnés. Des stages, ateliers et cours de chant y sont également organisés.",
  site:        coursabordeaux,
  active:      "true",
)

puts "Creating CrossPages"
url = "https://images.unsplash.com/photo-1544391641-ccb92906e11c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"

bordeauximpro = CrossPage.new(
  slug:             "impro-a-bordeaux",
  title:            "Cours d'improvisation à bordeaux",
  description:      "Trouvez les meilleurs cours d'improvisation sur bordeaux facilement",
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)
bordeauximpro.remote_banner_url = url
bordeauximpro.save!

bordeauxtheatre = CrossPage.new(
  slug:             "theatre-a-bordeaux",
  title:            "Cours de théâtre à bordeaux",
  description:      "Trouvez les meilleurs cours d'improvisation sur bordeaux facilement",
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)

bordeauxtheatre.remote_banner_url = url
bordeauxtheatre.save!

bordeauxlundi = CrossPage.new(
  slug:             "lundi-a-bordeaux",
  title:            "Cours sur bordeaux le lundi",
  description:      "Trouvez les meilleurs cours le lundi sur bordeaux facilement",
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)
bordeauxlundi.remote_banner_url = url
bordeauxlundi.save!

bordeauxmardi = CrossPage.new(
  slug:             "mardi-a-bordeaux",
  title:            "Cours sur bordeaux le mardi",
  description:      "Trouvez les meilleurs cours le mardi sur bordeaux facilement",
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)
bordeauxmardi.remote_banner_url = url
bordeauxmardi.save!

bordeauxmercredi = CrossPage.new(
  slug:             "mercredi-a-bordeaux",
  title:            "Cours sur bordeaux le mercredi",
  description:      "Trouvez les meilleurs cours le mercredi sur bordeaux facilement",
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)
bordeauxmercredi.remote_banner_url = url
bordeauxmercredi.save!

bordeauxjeudi = CrossPage.new(
  slug:             "jeudi-a-bordeaux",
  title:            "Cours sur bordeaux le jeudi",
  description:      "Trouvez les meilleurs cours le jeudi sur bordeaux facilement",
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)
bordeauxjeudi.remote_banner_url = url
bordeauxjeudi.save!

bordeauxvendredi = CrossPage.new(
  slug:             "vendredi-a-bordeaux",
  title:            "Cours sur bordeaux le vendredi",
  description:      "Trouvez les meilleurs cours le vendredi sur bordeaux facilement",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_bordeaux.jpeg")),
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)
bordeauxvendredi.remote_banner_url = url
bordeauxvendredi.save!

bordeauxweekend = CrossPage.new(
  slug:             "weekend-a-bordeaux",
  title:            "Cours sur bordeaux le weekend",
  description:      "Trouvez les meilleurs cours le weekend sur bordeaux facilement",
  active:           "true",
  meta_title:       "bordeaux PACA Bouche du Rhone 13",
  meta_description: "Les meilleurs cours du sud sont sur coursabordeaux",
  site:             coursabordeaux,
)
bordeauxweekend.remote_banner_url = url
bordeauxweekend.save!

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
bordeauximpro.tags << impro
bordeauxlundi.tags << lundi
bordeauxtheatre.tags << theatre
bordeauxmardi.tags << mardi
bordeauxmercredi.tags << mercredi
bordeauxjeudi.tags << jeudi
bordeauxvendredi.tags << vendredi
bordeauxweekend.tags << week_end

puts "All done"
