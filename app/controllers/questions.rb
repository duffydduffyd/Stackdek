#GET INDEX
get '/questions' do
  @all_questions = Question.all
  erb :'/questions/index'
end

get '/questions/new' do
  erb :'questions/new'
end

#POST ROUTE FOR THE FORM
post '/questions' do
  @question = Question.new(params[:question])
  if @question.save
    redirect '/questions'
  else
    @errors = @question.errors.full_messages
    erb :'questions/index'
  end
end

#GET QUESTION BY ID
get '/questions/:id' do
  @question = Question.find(params[:id])
  @answers = @question.answers
  @comments_on_question = @question.comments
    erb :'/questions/show'
end
