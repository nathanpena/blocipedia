require 'faker'

old_user_count = User.count
old_wiki_count = Wiki.count
 # Create Users
 10.times do
   user = User.new(
     username: Faker::Name.name,
     email:    Faker::Internet.email,
     password: 'helloworld'
   )
   user.skip_confirmation!
   user.save!
 end

 users = User.all

  # Create Lists
  50.times do
      Wiki.create!(
      title: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraph,
      user: users.sample)
  end
  
puts "Seed finished"
puts "#{User.count - old_user_count} users created"
puts "#{Wiki.count - old_wiki_count} lists created"