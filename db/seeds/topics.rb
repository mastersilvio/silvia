# db/seeds/topics.rb
[
  'Gramática',
  'Interpretação de Texto',
  'Geometria',
  'Álgebra',
  'Mecânica',
  'Termologia',
  'Brasil Colônia',
  'Segunda Guerra Mundial'
].each do |topic_name|
  Topic.find_or_create_by!(name: topic_name) do |t|
    t.description = "Conteúdo sobre #{topic_name}"
    t.active = true
  end
end
