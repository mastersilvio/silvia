# db/seeds/users.rb
puts "Seeding users..."

admin_profile = Profile.find_by(name: 'Administrador')

users_data = [
  {
    name: 'Administrador',
    email: 'admin@silvia.com',
    password: 'senha123',
    password_confirmation: 'senha123',
    profile: admin_profile,
    active: true
  }
  # outros usuários...
]

users_data.each do |user_data|
  begin
    user = User.find_by(email: user_data[:email])
    if user
      puts "Usuário #{user_data[:email]} já existe."
    else
      User.create!(user_data)
      puts "Usuário #{user_data[:email]} criado com sucesso."
    end
  rescue => e
    puts "Erro ao criar usuário #{user_data[:email]}: #{e.message}"
  end
end
