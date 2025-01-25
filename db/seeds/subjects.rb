# db/seeds/subjects.rb
[
  'Língua Portuguesa',
  'Matemática',
  'Biologia',
  'Física',
  'Química',
  'História',
  'Geografia',
  'Sociologia',
  'Filosofia'
].each do |subject_name|
  Subject.find_or_create_by!(name: subject_name) do |s|
    s.description = "Conteúdo relacionado à disciplina de #{subject_name}"
    s.active = true
  end
end
