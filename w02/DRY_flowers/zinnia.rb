require_relative('./flower.rb')

class Zinnia < Flower
  def initialize(color)
    super
    @type = 'annual'
  end
end