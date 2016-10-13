require_relative 'player'

class Game
  attr_reader :players

  DEFAULT_DAMAGE = 10

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(player)
    player.reduce_hp
  end

end
