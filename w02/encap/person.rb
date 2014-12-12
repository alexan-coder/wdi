class Person
	attr_reader :name
	def initialize(name)
		@name = name.capitalize
	end
	def greeting(name)
		name.capitalize
		puts "Hey there #{name}!"
	end
end