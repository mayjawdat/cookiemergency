helpers do

  def login
    session[:user_id] = @user.id
  end

  def logout
    session[:user_id] = nil 
  end

  def current_user
    session[:user_id] != nil
  end

  def logged_in?
    !!current_user
  end

end