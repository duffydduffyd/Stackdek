post '/login' do
  login
  if logged_in?
    p session[:id]
  redirect '/questions'
  else
    @errors = ['You entered something wrong, try again?']
    erb :'index'
  end
end

delete '/logout' do
  logout
  redirect '/'
end
