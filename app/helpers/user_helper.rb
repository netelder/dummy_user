helpers do

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      session[:user_id] = @user.id
      erb :profile
    else
      redirect '/'
    end
  end

end
