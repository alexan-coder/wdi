class Dog
  def initialize
    @has_tail = true
    @name = ["Fido", "Sparky", "Rover", "Spot", "Scooby", "Astro", "Lassie"].sample
    @gender = ["male", "female"].sample
  end

  def cuteness
    @cuteness
  end

  def eat
    puts "Om nom nom"
  end

  def name
    @name
  end

  def gender
    @gender
  end
end
