
# Create 14 users
15.times do
  user = User.create!(user_name: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "password")

    # password: Faker::Internet.password)
end

# Create 10 questions posted by randomly selected users.
10.times do
  id = User.all.pluck(:id).sample
  title = "#{Faker::Company.catch_phrase}?"
  body = Faker::Lorem.paragraph(4, true, 6)
  question = Question.create!(title: title, body: body, author_id: id)
end


# Create 20 answers for 10 randomly picked questions so that we have multiple answers for for some questions.

20.times do
  user_id = User.all.pluck(:id).sample
  question_id = Question.all.pluck(:id).sample
  response = "#{Faker::StarWars.quote} #{Faker::Lorem.paragraph(5, true, 7)}"
  answer = Answer.create!(answer_text: response, author_id: user_id, question_id: question_id)
end



# 10.times do
#   id = User.all.pluck(:id).sample
#   question = Question.create!(title: Faker::Company.catch_phrase, body: Faker::Lorem.sentence, author_id: id)
# end


# 20.times do
#   user_id = User.all.pluck(:id).sample
#   question_id = Question.all.pluck(:id).sample
#   answer = Answer.create!(answer_text: Faker::StarWars.quote, author_id: user_id, question_id: question_id)
# end