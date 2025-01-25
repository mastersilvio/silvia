# db/seeds/users.rb
if User.count.zero?
  admin_profile = Profile.find_by(name: 'Administrador')

  admin_user = User.create!(
    name: 'Administrador',
    email: 'admin@silvia.com',
    password_digest: BCrypt::Password.create('senha123'),
    profile: admin_profile,
    active: true
  )
end
