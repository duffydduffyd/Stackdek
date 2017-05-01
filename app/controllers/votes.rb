post '/votes' do
  @vote = Vote.new(params[:vote])
  if @vote.save
    redirect '/'
  else
    @errors = @vote.errors.full_messages
    erb :'/questions/index'
  end
end

