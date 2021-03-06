# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = 5.times.map do |i|
  User.create!(
    email: "user#{i}@email.com",
    name: Faker::Name.name,
    password: "12345678",
    password_confirmation: "12345678",
  )
end

40.times do
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs(15).join("\n"),
    user: users.sample
  )
end
