get '/answers/:id' do
  @answer = Answer.find(params[:id])
  @comments_on_answer = @answer.comments
  # Comment.where(commentable_id: params[:id], commentable_type: 'answer')
  erb :'answers/show'
end

