enable :sessions

get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.password == params[:user][:password]
    session[:id] = @user.id
    redirect '/'
  else
    @errors = ['Please enter valid input']
    erb :'sessions/new'
  end
end

get '/sessions/delete' do
  logout
  redirect '/'
end

