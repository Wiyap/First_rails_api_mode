# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Article.delete_all
Article.reset_pk_sequence
User.delete_all
User.reset_pk_sequence

10.times do 
  user = User.create(email: Faker::Internet.email, password: "123456")
  Article.create(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.sentence(word_count: 50),
    user_id: user.id
  )
  p "Nouvel article créé. User id = #{user.id}"
end
