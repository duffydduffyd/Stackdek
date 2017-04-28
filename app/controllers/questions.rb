#GET INDEX
get '/questions' do
  @all_questions = Question.all
  erb :'/questions/index'
end


#GET QUESTION BY ID
get '/questions/:id' do
  @question = Question.find(params[:id])
  @answers = Answer.where(question_id: params[:id])
  @comments_on_question = Comment.where(commentable_id: params[:id], commentable_type: 'question')
  erb :'/questions/show'
end
