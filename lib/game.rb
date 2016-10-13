require_relative 'player'

class Game

  attr_reader :players

  DEFAULT_DAMAGE = 10

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(player)
    if player == @players[1]
      @players[1].reduce_hp
    elsif player == @players[2]
      @players[1].reduce_hp
    end
  end

end
