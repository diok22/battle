require_relative 'player'

class Game

  DEFAULT_DAMAGE = 10

  def attack(player)
    player.reduce_hp
  end

end
