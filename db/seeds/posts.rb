puts 'Start inserting seed "posts" ...'

3.times do |i|
  User.find_each do |user|
    puts "\"#{user.username}\" posted something!"
    user.posts.create({ body: Faker::Hacker.say_something_smart, user_id: user.id })
  end
end
