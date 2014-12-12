require_relative './dog.rb'

class Doberman < Dog
  def initialize
    @type = "Doberman"
    @size = "large"
    @cuteness = 4
    super
  end

  def bark
    puts "Ruff ruff ruff!"
  end
end