post '/login' do
  login
  if logged_in?
    p session[:id]
    redirect "/users/#{session[:id]}"
  else
    @errors = ['You entered something wrong, try again?']
    erb :'index'
  end
end

delete '/logout' do
  logout
  redirect '/'
end
