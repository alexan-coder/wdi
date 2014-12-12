require_relative('./flower.rb')
require_relative('./rose.rb')
require_relative('./tulip.rb')
require_relative('./zinnia.rb')
require_relative('./flour.rb')

rando_variable = Tulip.new('chartreuse')
green_rose = Rose.new('blue')
green_rose.color

flour = Flower.new('grey')

# Spring Flowers

# This garden of flowers is a mess! Time to clean it up a bit...

# * Some things are broken...fix them!
# * Refactor
# * DRY it up
# * Proper indentation
# * Stick to semantic names and style guide conventions
# * Split up the classes and other functionality in to the appropriate files using require_relative