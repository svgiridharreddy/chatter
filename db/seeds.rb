# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
password = "pass1234"
10.times do |i|
  User.create(email: "user_#{i}@gmail.com",password: "#{password}",password_confirmation: "#{password}")
end
