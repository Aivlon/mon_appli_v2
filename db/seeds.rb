# db/seeds.rb
require 'json'

# Supprimer tous les boxeurs existants avant de recharger
Boxer.destroy_all

# Charger le fichier JSON
file_path = Rails.root.join('boxers_jo.json')
boxers_data = JSON.parse(File.read(file_path))

boxers_data.each do |boxer_attrs|
  # Créer uniquement si le boxeur n'existe pas déjà
  boxer = Boxer.find_or_create_by(
    name: boxer_attrs['name'],
    olympic_year: boxer_attrs['olympic_year']
  ) do |b|
    b.nationality = boxer_attrs['nationality']
    b.weight_class = boxer_attrs['weight_class']
    b.attack_points = boxer_attrs['attack_points']
    b.defense_points = boxer_attrs['defense_points']
  end

  puts "✅ #{boxer.name} (#{boxer.olympic_year})"
end

puts "🥊 Seed terminé : #{Boxer.count} boxeurs chargés"