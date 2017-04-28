get '/answers' do
  @answers = Answer.all
  erb :'answers/index'
end

get '/questions/:question_id/answers/new' do
  @question = Question.find(params[:question_id])
  # erb :"questions/#{params[:question_id]}"
  erb :"answers/new"
end

post '/answers' do
  @answer = Answer.new(params[:answer])
  if @answer.save
    redirect "/questions"
  else
    @errors = @answer.errors.full_messages
    erb :'answers/new'
  end
end


#GET answer BY ID
get '/answers/:id' do
  @answer = Answer.find(params[:id])
  @comments_on_answer = @answer.comments
  erb :'answers/show'
end
