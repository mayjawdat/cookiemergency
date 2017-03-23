# go to form to create new user
get '/users/new' do
  erb :'/users/new'
end

# create new user  
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    login
    erb :'/users/show'
  else
    @errors = @user.errors
    erb :'users/new'
  end
end

# display specific user
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
