require_relative 'player'

class Game

  attr_reader :players

  DEFAULT_DAMAGE = 10

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack
    @players[1].reduce_hp
    switch
  end

  def switch
    @players.reverse!
  end

end

#
# if player == @players[1]
#   @players[1].reduce_hp
# elsif player == @players[0]
#   @players[0].reduce_hp
# end
