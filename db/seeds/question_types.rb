[
  { name: 'Múltipla Escolha', description: 'Questão com várias alternativas e apenas uma correta' },
  { name: 'Verdadeiro ou Falso', description: 'Questão com afirmações para serem classificadas como verdadeiras ou falsas' },
  { name: 'Dissertativa', description: 'Questão que exige resposta escrita elaborada' },
  { name: 'Associação', description: 'Questão que requer associação entre colunas' }
].each do |type|
  QuestionType.find_or_create_by!(name: type[:name]) do |qt|
    qt.description = type[:description]
    qt.active = true
  end
end
