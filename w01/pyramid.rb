# 00X00
# 0XXX0
# XXXXX

# get the symbol
# get the number of rows
# make an array based on 2
# for each item in array, put in the correct number of symbols
# print out each value in the array
puts "which symbol do you want?"
symbol = gets.chomp

puts "how many rows?"
number_of_rows = gets.chomp.to_i

increment = 1
number_of_rows.times do |i|
	num_of_symbols = increment + i
	puts " " * (number_of_rows - 1) + symbol * num_of_symbols
	increment += 1
	number_of_rows -= 1
end

# 1, 1, 0
# 2, 3, 1
# 3, 5, 2
# 4, 7, 3
# 5, 9
