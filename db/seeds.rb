require 'faker'

10.times do
  user = User.create!(user_name: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: Faker::Internet.password)
end

10.times do
  question = Question.create!(title: Faker::Company.catch_phrase, body: Faker::Lorem.sentence, user_id: rand(1..10))
  question.comments.create(comment_text: Faker::ChuckNorris.fact, author_id: rand(1..10))

end

3.times do
  answer = Answer.create!(answer_text: Faker::StarWars.quote, author_id: rand(1..10), question_id: rand(1..10))
  answer.comments.create(comment_text: Faker::StarWars.quote, author_id: rand(1..10))
end
