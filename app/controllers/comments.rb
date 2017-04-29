
get '/questions/:question_id/comments/new' do
  @question = Question.find(params[:question_id])
  erb :'/comments/new'
end

post '/questions/:question_id/comments' do
  @comment = Comment.new(params[:comment])
  if @comment.save
    redirect '/'
  else
    @errors = @comment.errors.full_messages
    erb :'/questions/index'
  end
end