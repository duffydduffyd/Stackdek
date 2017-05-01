get '/' do
  'Hi there ken'
  erb :'/index'
end


get '/users' do
  @all_users = User.all
  erb :'/users/index'
end


post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  @questions = @user.questions
  erb :'users/show'
end


get '/users/:user_name/questions' do
  @user = User.find_by(params[user_name])
  @questions = @user.questions
  erb :'questions/index'
end