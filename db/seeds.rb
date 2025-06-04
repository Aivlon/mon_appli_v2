# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'json'

boxers_each = JSON.parse(File.read(Rails.root.join("boxers_jo.json"))).each
boxers_each.each do |boxer|
  Boxer.create!(
    name: boxer["name"],
    nationality: boxer["nationality"],
    weight_class: boxer["weight_class"],
    olympic_year: boxer["olympic_year"],
    attack_points: boxer["attack_points"],
    defense_points: boxer["defense_points"]
  )
end