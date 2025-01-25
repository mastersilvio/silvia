# db/seeds/profiles.rb
profiles = [
  { name: 'Administrador', description: 'Acesso total ao sistema' },
  { name: 'Professor', description: 'Acesso às funcionalidades de ensino' },
  { name: 'Aluno', description: 'Acesso às provas e conteúdos' }
].each do |profile|
  Profile.find_or_create_by!(name: profile[:name]) do |p|
    p.description = profile[:description]
    p.active = true
  end
end
