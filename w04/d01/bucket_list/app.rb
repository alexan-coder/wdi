require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql',
	host: 'localhost',
	database: 'bucket_db'
)

class Item < ActiveRecord::Base
	has_many :comments
end

class Comment < ActiveRecord::Base
	belongs_to :items
end

# binding.pry

get '/' do
	@items = Item.all.order(:id)
	erb :index
end

get '/:id' do
	id = params[:id]
	@item = Item.find(id)
	erb :item
end

post '/item' do
	title = params[:title]
	description = params[:description]
	@item = Item.create(:title=>title, :description=>description)
	erb :item
end

get '/update/:id' do
	id = params[:id]
	@item = Item.find(id)
	erb :update_item
end

post '/update/:id' do
	id = params[:id]
	@new_title = params[:title]
	@new_description = params[:description]
	Item.update(id, :title=>@new_title, :description=>@new_description)
	erb :updated
end

get '/delete/:id' do
	id = params[:id]
	Item.delete(id)
	@items = Item.all.order(:id)
	erb :index
end

post '/comment/:item_id' do
	item_id = params[:item_id]
	body = params[:body]
	@comment = Comment.create(:body=>body, :item_id=>item_id)
	erb :comment
end

get '/update_comment/:id' do
	id = params[:id]
	@comment = Comment.find(id)
	erb :update_comment
end

post '/update_comment/:id' do
	comment_id = params[:id]
	@body = params[:body]
	@item_id = params[:item_id]
	Comment.update(comment_id, :body=>@body, :item_id=>@item_id)
	erb :updated
end

get '/delete_comment/:id' do
	id = params[:id]
	Comment.delete(id)
	@items = Item.all.order(:id)
	erb :index
end