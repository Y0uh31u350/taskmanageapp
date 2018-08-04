
puts 'Start inserting seed "users"...'

10.times do
  user = User.create({
     username: Faker::Internet.unique.user_name,
     email: Faker::Internet.unique.email,
     password: Faker::Internet.password(8),
     avatar: open(Faker::Avatar.unique.image(slug = nil, size = '300x300', format = 'png'))
  })

  puts "\"#{user.username}\" has created!"

  user.confirm
end
