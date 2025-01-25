# db/seeds/grades.rb
[
  { name: '6º ano do Ensino Fundamental', level: 'fundamental', order: 6 },
  { name: '7º ano do Ensino Fundamental', level: 'fundamental', order: 7 },
  { name: '8º ano do Ensino Fundamental', level: 'fundamental', order: 8 },
  { name: '9º ano do Ensino Fundamental', level: 'fundamental', order: 9 },
  { name: '1ª série do Ensino Médio', level: 'medio', order: 1 },
  { name: '2ª série do Ensino Médio', level: 'medio', order: 2 },
  { name: '3ª série do Ensino Médio', level: 'medio', order: 3 }
].each do |grade|
  Grade.find_or_create_by!(name: grade[:name]) do |g|
    g.description = "Conteúdo para #{grade[:name]}"
    g.level = grade[:level]
    g.order = grade[:order]
    g.active = true
  end
end
