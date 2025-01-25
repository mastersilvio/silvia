# db/seeds/permissions.rb
if Permission.count.zero?
  admin_user = User.find_by(email: 'admin@silvia.com')
  admin_profile = Profile.find_by(name: 'Administrador')

  Permission.create!(
    user: admin_user,
    profile: admin_profile,
    active: true
  )
end
