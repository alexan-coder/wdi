red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

# print the line of Red
puts "This is the list of stops of Red line"
puts red

# get user input, which stop to get on
puts "Which stop do you want to get on?"
stop_on = gets.chomp

# get user input, which stop to get on
puts "Which stop do you want to get off?"
stop_off = gets.chomp

# display the distance btw stop_on and stop_off & show them
how_many_stops = (dc_metro[:red].index(stop_on) - dc_metro[:red].index(stop_off)).abs
puts how_many_stops

