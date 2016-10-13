require_relative 'game'

class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def reduce_hp(damage = Game::DEFAULT_DAMAGE)
    @hp -= damage
  end
end
