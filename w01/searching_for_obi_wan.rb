 # * introduce himself as "C-3P0, human-cyborg relations."
 #   * ask the user's name
 #   * print  "It is a pleasure to meet you, **name**. Have you ever met a protocol droid before?"
 #   * print  "**user_answer**? How interesting, for someone from around these parts."
 #   * print  "I'm terribly sorry for prying, but you don't by any chance go by the alias of Obi-Wan Kenobi, do you? (Answer "I do" or "I don't")"
 #   * If the user answers 'I do' **OR** 'i do' **OR** 'I DO' **OR** 'i Do'
 #     * print  "Oh, marvelous! Simply marvelous! Say hello to R2-D2; he's been looking all over for you."
 #   * Otherwise:
 #     * print  "I've really enjoyed speaking with you, **name**, but if you'll please excuse me, I have to help my friend find someone named Obi-Wan Kenobi."
 #     * prompt the user to enter their favorite farewell.
 #     * print "**fav_farewell** to you too."
 #     * print "Well R2, I suppose we'll just have to keep looking."
 #     * print "R2-D2: (Agreeable droid noises)"

puts "Hi, I'm C-3P0, human cyborg relations. What's your name?"
name = gets.chomp

puts "It is a pleasure to meet you, #{name}. Have you ever met a protocol droid before?"
user_answer = gets.chomp

puts "#{user_answer}? How interesting, for someone from around these parts."
puts "I'm terribly sorry for prying, but you don't by any chance go by the alias of Obi-Wan Kenobi, do you? (Answer \"I do\" or \"I don't\")"
user_answer2 = gets.chomp

if user_answer2 == ("I do" || "i do" || "I DO" || "i Do")
  puts "Oh, marvelous! Simply marvelous! Say hello to R2-D2; he's been looking all over for you."
else
  puts "I've really enjoyed speaking with you, #{name}, but if you'll please excuse me, I have to help my friend find someone named Obi-Wan Kenobi."
end

puts "what's your favorite farewell?"
farewell = gets.chomp

puts "#{farewell} to you too."
puts "Well R2, I suppose we'll just have to keep looking."
puts "R2-D2: (Agreeable droid noises)"