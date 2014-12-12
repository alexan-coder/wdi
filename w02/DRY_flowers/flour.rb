require_relative('./flower.rb')

class Flour < Flower
	def initialize(color)
		super
		@how_to_pick = "Break the stem"
	end
end