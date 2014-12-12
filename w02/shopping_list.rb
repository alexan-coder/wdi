=begin
#Shopping List

##Learning Objectives:
- Write a class with an initialize method
- Write getter and setter methods
- Write a method that accepts arguments
- Modify objects attributes with a method
- Use different datatypes as attributes

##Prompt
- The holidays are on their way! Using what we know so far, make an interactive program that allows a user to create a shopping list. We're assuming that the user wants to make lists for grocery shopping, gifts shopping, etc. The list should have a title.

- The program should start by prompting the following options:
    
    1- Create new shopping list (the new list should have a title)
    2- Edit list's name
    3- See all items
    4- Add new item
    6- Exit

###Bonus
- Add an option to remove a specific item from the list
- Think of ways to associate quantity to the item's name (hashes, anyone?) #starter code
=end

class ShoppingList

	@@total_shopping_list = 0

	def initialize(title='', *items)
		@@total_shoppping_list += 1
		@title = title
		@items = items
	end

	def self.total_shoppping_list
		return @@total_shoppping_list
	end

	def title
		@title
	end

	def title=(title)
		@title = title
	end

	def items
		@items
	end

	def addItems(*items)
		@items << items
	end
end

list = ShoppingList.new('no name', 'milk', 'beef', 'cookie')

answer = ''
while answer != 6
	puts "Choose an option from below."
	puts "1- Create new shopping list (the new list should have a title)"
	puts "2- Edit list's name"
	puts "3- See all items"
	puts "4- Add new item"
	puts "6- Exit"
	answer = gets.chomp.to_i

	case answer
	when 1
		puts "What would you like the title of the shopping list?"
		title = gets.chomp
		list.title=(title)
		puts "Shopping list '#{list.title}' was created."
	when 2
		puts "How would you change the title of the shopping list?"
		title = gets.chomp
		list.title=(title)
		puts "Shopping list title was renamed as '#{list.title}.'"
	when 3
		puts "Your shopping list '#{list.title}' has items such as..."
		print list.items.flatten
		puts ''
	when 4
		puts "Which items do you want to add."
		items = gets.chomp
		list.addItems(items)
		puts "#{items} were added."
	end
end
