# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
  meta_title:       "Trouvez les meilleurs cours à marseille",
  meta_description: "meta_description à remplir",
  banner:           File.new(File.join(Rails.root, "/app/assets/images/photo_marseille.jpeg")),
  title:            "Marseille",
  description:      "description à remplir",
  active:           "true",
  analytics:        "2",
)

puts "Creating Tetard as a Company"

tetard = Company.create!(
  name:        "Théâtre du Tétard",
  address:     "33 Rue Ferrari, 13005 Marseille",
  mail:        "Mail à remplir",
  description: "L’établissement propose chaque lundi deux cours de théâtre
  qui sont réservés exclusivement aux adultes. L’accent est mis sur
  la stimulation de la créativité chez les participants. Les professeurs,
  dont Anabel Gransagne et David Simon, organisent, pour ce faire, des exercices.
  La formation dure, en effet, une année et s’effectue en plusieurs étapes allant
  de l’initiation jusqu’à l’approfondissement.",
  site:        coursamarseille,
)

puts "Creating MarseilleImpro as a CrossPage"

marseilleimpro = CrossPage.create!(
  slug:             "impro",
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

puts "Creating tags"

lundi = Tag.create!(name: "lundi")
# mardi = Tag.create!(name: "mardi")
# mercredi = Tag.create!(name: "mercredi")
# jeudi = Tag.create!(name: "jeudi")
# vendredi = Tag.create!(name: "vendredi")
# week_end = Tag.create!(name: "week_end")
# theatre = Tag.create!(name: "theatre")
impro = Tag.create!(name: "impro")

puts "adding tags to existing company and crosspage"

tetard.tags << lundi
marseilleimpro.tags << impro
marseillelundi.tags << lundi
# << Tag.create!(name: 'lundi')
# Tetard.tags << Tag.create!(name: 'impro')

puts "All done"
