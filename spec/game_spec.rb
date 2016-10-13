require 'game'

describe Game do



  it "has a defualt damage of 10" do
    expect(Game::DEFAULT_DAMAGE).to eq(10)
  end

  describe '#initialize' do
    it "creates array for players" do
      player_1 = Player.new("Dionysis")
      player_2 = Player.new("Royston")
      game = Game.new(player_1, player_2)
      expect(game.players).to eq [player_1, player_2]
    end
  end

  describe '#attack' do
    it 'allows player to receive #reduce_hp' do
      player_1 = Player.new("Dionysis")
      player_2 = Player.new("Royston")
      game = Game.new(player_1, player_2)
      game.attack(player_2)
      expect(player_2.hp).to eq(90)
    end

    it 'reduces the HP by the default damage value' do
      player_1 = Player.new("Dionysis")
      player_2 = Player.new("Royston")
      game = Game.new(player_1, player_2)
      expect{game.attack(player_2)}.to change{player_2.hp}.by(-10)
    end
  end
end
