require 'faker'

10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do
  article = Article.create(title: Faker::Lorem.word, content: Faker::Lorem.sentence, user_id: rand(1..10), category_id: rand(1..5))
end

5.times do
  category = Category.create(name: Faker::Lorem.word)
end

#L'étape suivante consiste à remplir la colonne category_id de la table articles
#car au moment de la création des articles, category n'existait pas encore
#on aurait aussi pu utiliser la méthode Article.new au lieu de create, puis
#save plus tard.
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
