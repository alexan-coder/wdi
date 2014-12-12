# ## Never Ending Story

# Oh no, we have a recursive story! Open `never_ending_story.rb` and do the following:

# * Write a program that prints out a story line, and then prompts:
# 	* **"Should we continue? (y/n)"**
# 	* If "n", use `break` to exit.
# 	* If "y", print the next line of the story.
# * Do this indefinitely until the user chooses to stop. 
# * Loop the story back to the beginning when you run out of story lines!


story = [
  'Fry is born without a delta brainwave',
  'As a result, Fry is cryogenically frozen until 2999',
  'In the future, Fry works on a spaceship',
  'The spaceship hits a wormhole and crashes in 1941 Roswell, NM',
  'Fry encounters his grandmother, then inadvertently sires his father'
]

i = 0
while i < 5 do
	puts story[i]
	puts "Should we continue? (y/n)"
	answer = gets.chomp
	if answer == "y"
		i += 1
	else
		break
	end
	if i == 5
		i = 0
	end
end
