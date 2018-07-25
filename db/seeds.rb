require 'faker'

10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do
  article = Article.create(title: Faker::Lorem.word, content: Faker::Lorem.sentence, user_id: rand(1..10), category_id: rand(1..5))
end

5.times do
  category = Category.create(name: Faker::Lorem.word, article_id: rand(1..10))
end

Article.all.each do |a|
  category = Category.all.sample
  a.category = category
  a.save
end

15.times do
  comment = Comment.create(content: Faker::Lorem.sentence, user_id: rand(1..10), article_id: rand(1..10))
end

15.times do
  like = Like.create(user_id: rand(1..10), article_id: rand(1..10))
end
