#GET INDEX
get '/questions' do
  @all_questions = Question.all
  erb :'/questions/index'
end


#GET QUESTION BY ID
get '/questions/:id' do
  @question = Question.find(params[:id])
  @answers = @question.answers
  @comments_on_question = @question.comments
    erb :'/questions/show'
end
