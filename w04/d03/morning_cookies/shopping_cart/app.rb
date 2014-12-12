require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "./models/product"
require_relative "./models/user"

enable :sessions

before do # before any routes, session is initiated
  session[:cart] ||= [] # conditional assignment: if session[:cart] is nil assign [] to it, if not do not assign anything.
end

get "/" do
  # Show the index page
  erb :index
end

get "/products" do
	# List all the products
	@products = Product.all.order(:id)
	erb :products
end

get "/cart" do
  # Show what's currently in the user's cart
  @cart_products = session[:cart].map { |product_id| Product.find(product_id) }
  erb :cart
end

post "/cart/products" do
	# Add an item to the user's cart
	session[:cart] << params[:product_id]
	# Redirect them to the 'cart' page afterwards
	redirect('/cart')
end

get "/session/logout" do
  # Empty the cart
  session[:cart] = [] # session.clear would wipe out all the session data
  redirect('/')
end

get '/session/login' do
  erb :login
end

post '/session/login' do
  user = User.find_by(:email=>params[:email])
  password = BCrypt::Password.create(params[:password])
  existing_password = BCrypt::Password.new(password)
  if existing_password == user.password
    "You are logged in!"
  else
    "Wrong password"
  end
end