10.times do
  user = User.create!(user_name: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "password")

    # password: Faker::Internet.password)
end

10.times do
  id = User.all.pluck(:id).sample
  question = Question.create!(title: Faker::Company.catch_phrase, body: Faker::Lorem.sentence, author_id: id)
end

20.times do
  user_id = User.all.pluck(:id).sample
  question_id = Question.all.pluck(:id).sample
  answer = Answer.create!(answer_text: Faker::StarWars.quote, author_id: user_id, question_id: question_id)
end
