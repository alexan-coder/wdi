
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql',
	host: 'localhost',
	database: 'growler'
)

class User < ActiveRecord::Base
	has_many :growls
	validates :username, uniqueness: true
end

class Growl < ActiveRecord::Base
	belongs_to :user
end

get '/' do
	erb :index
end

post '/:username' do
	"hi" # params["username"]
end

# get '/homepage' do
# 	@users = User.all
# 	params[@users]
# end