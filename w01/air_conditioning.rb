puts "desired temperature?"
desired_temp = gets.chomp.to_i

puts "what is the current temperature?"
current_temp = gets.chomp.to_i

puts "ac is functional? (y/n)"
ac = gets.chomp

if ac == "y"
	if current_temp > desired_temp
		puts "Turn on the A/C please"
	end
elsif ac == "n"
	if current_temp > desired_temp
		puts "Fix the A/C now! It's hot."
	elsif current_temp < desired_temp
		puts "Fix the A/C whenever you have the chance..,it's cool.."
	else
		puts "I dont know"
	end
end


