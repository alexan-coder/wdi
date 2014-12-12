require_relative './dog.rb'

class YellowLab < Dog
  def initialize
    @type = "Yellow Lab"
    @size = "medium"
    @cuteness = 7
    super
  end

  def bark
    puts "Woof woof woof!"
  end
end