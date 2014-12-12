require_relative './corgi.rb'
require_relative './yellow_lab.rb'
require_relative './doberman.rb'

puts "What kind of dog are you looking for? (C)orgi, (Y)ellow Lab, or (D)oberman?"
dog_type = gets.chomp

if dog_type != "C" && dog_type != "Y" && dog_type != "D"
  puts "Sorry, those are all the dogs we have. Wanna try again?"

  puts "What kind of dog are you looking for? (C)orgi, (Y)ellow Lab, or (D)oberman?"
  dog_type = gets.chomp

  if dog_type != "C" && dog_type != "Y" && dog_type != "D"
    puts "Sorry, those are all the dogs we have. Wanna try again?"

    puts "What kind of dog are you looking for? (C)orgi, (Y)ellow Lab, or (D)oberman?"
    dog_type = gets.chomp
  end
end

case dog_type
when "C" then obj = Corgi.new
when "Y" then obj = YellowLab.new
when "D" then obj = Doberman.new
end

puts "Your new dog's name is #{obj.name}"

if obj.gender == "male"
  puts "Be sure to neuter your dog!"
end

if obj.gender == "female"
  puts "Be sure to spay your dog!"
end

puts "Have a great life with #{obj.name}"