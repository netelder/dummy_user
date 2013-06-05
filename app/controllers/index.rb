get '/' do
  erb :index
end

post '/login' do
 login
end

post '/create_account' do
  @user = User.find_or_create_by_email(:email => params[:email], :full_name => params[:full_name], :password => params[:password])
  login
end

get '/logout' do 
  redirect '/'
end


