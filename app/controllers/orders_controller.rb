  # go to form to create new order
get '/orders/new' do
  erb :'/orders/new'
end

  # create new order
post '/orders' do
  @order = Order.new(params[:order])
  if @order.save
    erb :'/orders/show'
  else
    @errors = @order.errors
    erb :'/orders/new'
  end
end

  # show specific order
  # /orders/show
get '/orders/:id' do
end
