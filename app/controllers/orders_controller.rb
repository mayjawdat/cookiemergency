get '/orders/new' do
  # go to form to create new order
  erb :'/orders/new'
end

post '/orders' do
  # create new order
end

get '/orders/:id' do
  # show specific order
  # /orders/show
end
