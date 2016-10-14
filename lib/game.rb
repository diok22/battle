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

  def first_player_name
    @players[0].name
  end

  def second_player_name
    @players[1].name
  end

  def first_player_hp
    @players[0].hp
  end

  def second_player_hp
    @players[1].hp
  end

end
