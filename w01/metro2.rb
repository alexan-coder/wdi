# 5) Now move on to two-line functionality (Red and Turquoise)
#   - The user should be asked what line they want to get on
#   - The user should be given a list of all the stops on that line
#   - The user should be able to enter the stop that they want to get on at
#   - The user should be asked what line they want to get off
#   - The user should be given a list of all the stops on that line
#   - The user should be able to enter the stop that they want to get off at
#   - The user should be told the number of stops for their trip

red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "which line do you want to get on? (red/turquoise/orange)"
line_on = gets.chomp.to_sym
stops_on = dc_metro[line_on]
puts stops_on
puts "Which stop do you want to get on?"
stop_on = gets.chomp

puts "which line do you want to get off? (red/turquoise/orange)"
line_off = gets.chomp.to_sym
stops_off = dc_metro[line_off]
puts stops_off
puts "Which stop do you want to get off?"
stop_off = gets.chomp

starting_point = dc_metro[line_on].index(stop_on)
metro_center_on = dc_metro[line_on].index("Metro Center")
trip_1 = (starting_point - metro_center_on).abs

ending_point = dc_metro[line_off].index(stop_off)
metro_center_off = dc_metro[line_off].index("Metro Center")
trip_2 = (ending_point - metro_center_off).abs

trip = trip_1 + trip_2
puts trip