# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Carrega todos os arquivos de seed em ordem específica
[
  'profiles',
  'users',
  'permissions',
  'subjects',
  'grades',
  'topics',
  'question_types'
].each do |seed|
  puts "Seeding #{seed}..."
  require File.join(Rails.root, 'db', 'seeds', "#{seed}.rb")
end

puts "\nSeeds executados com sucesso!"
puts "----------------------------------------"
puts "Perfis criados: #{Profile.count}"
puts "Usuários criados: #{User.count}"
puts "Permissões criadas: #{Permission.count}"
puts "Disciplinas criadas: #{Subject.count}"
puts "Séries criadas: #{Grade.count}"
puts "Tópicos criados: #{Topic.count}"
puts "Tipos de questões criados: #{QuestionType.count}"
puts "----------------------------------------"

QuestionType.create([
  { name: 'Múltipla Escolha' },
  { name: 'Verdadeiro ou Falso' },
  { name: 'Dissertativa' }
])
