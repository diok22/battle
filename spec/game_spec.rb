require 'game'

describe Game do
  subject(:game) {described_class.new}

  player_2 = Player.new("Royston")

  it "has a defualt damage of 10" do
    expect(Game::DEFAULT_DAMAGE).to eq(10)
  end

  describe '#attack' do
    it 'allows player to receive #reduce_hp' do
      game.attack(player_2)
      expect(player_2.hp).to eq(90)
    end

    it 'reduces the HP by the default damage value' do
      expect{game.attack(player_2)}.to change{player_2.hp}.by(-10)
    end
  end
end
