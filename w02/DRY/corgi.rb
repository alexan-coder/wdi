require_relative './dog.rb'

class Corgi < Dog
  def initialize
    @type = "Corgi"
    @size = "tiny"
    @cuteness = 10
    super
  end

  def bark
    puts "Yap Yap Yap!"
  end
end
