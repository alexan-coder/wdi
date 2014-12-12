require_relative('./flower.rb')

class Rose < Flower
  def initialize(color)
    super
    @how_to_pick = "Wear gloves."
    @has_thorns = true
  end

  def i_wonder_if_this_rose_has_thorns
    @has_thorns
  end
end


rose = Rose.new('red')

p rose