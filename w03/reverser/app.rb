require 'sinatra'
require 'sinatra/reloader' # posiible because of sinatra-contri installed

get '/coin_toss' do
	@flip = ["Heads", "Tails"].sample
	erb :coin_toss
end

get '/magic8ball/:question' do
	@answers = [ "It is certain", 
  "It is decidedly so", 
  "Without a doubt", 
  "Yes definitely",
  "You may rely on it",
  "As I see it yes",
  "Most likely",
  "Outlook good",
  "Yes", "Signs point to yes", 
  "Reply hazy try again", 
  "Ask again later",
  "Better not tell you now", 
  "Cannot predict now", 
  "Concentrate and ask again",
  "Don't count on it", 
  "My reply is no", 
  "My sources say no",
  "Outlook not so good", 
  "Very doubtful" ]
	erb :magic
	# return params["question"] + "? <br>" + answers.sample
end

get '/' do # GET reads data
  "Hello Sean!"
end

get '/hello/:name' do
  params["name"]
end

get '/:username' do
  params["username"] # params is a kind of global variable whose data type is Hash.
end

# send a POST request using Postman
post '/reverse' do # POST creates data
  "the first one"
  params["name"]
end

# get '/dice_roll' do
#   rand(1..6).to_s # not rand(6) because it could generate 0
# end

# computer = ["rock", "paper", "scissor"].sample
# get '/rps/rock' do
#   case computer
#     when "rock" then "even"
#     when "paper" then "you lost"
#     when "scissor" then "you won"
#   end 
# end

#Sinatra Games

###Specification:

# - GET `/coin_toss`
#   - returns "Heads" or "Tails"
# - GET `/dice_roll`
#     - returns a number between 1 and 6
# - GET `/magic8ball/will%20it%20snow%20tomorrow`
#   - returns the question asked (in this case, "Will it snow tomorrow?"), followed by a random magic 8 ball response (see below)
# - GET `/rps/rock`
#   - returns the computer's random choice, followed by the outcome of the rps game.
#       - __Example:__ "The computer chose (computer's choice). You (win/lose/tie)!"

###Magic 8 Ball Responses

# ```Ruby
# [ 
#   "It is certain", 
#   "It is decidedly so", 
#   "Without a doubt", 
#   "Yes definitely",
#   "You may rely on it",
#   "As I see it yes",
#   "Most likely",
#   "Outlook good",
#   "Yes", "Signs point to yes", 
#   "Reply hazy try again", 
#   "Ask again later",
#   "Better not tell you now", 
#   "Cannot predict now", 
#   "Concentrate and ask again",
#   "Don't count on it", 
#   "My reply is no", 
#   "My sources say no",
#   "Outlook not so good", 
#   "Very doubtful"
# ]
# ```