require 'player'

describe Player do
  subject(:player) {described_class.new}
  player_1 = Player.new("Dio")
  player_2 = Player.new("Royston")

  describe '#initialize' do

    it 'stores name as an attribute' do
      expect(player_1.name).to eq("Dio")
    end

    it 'stores HP points as attributes' do
      expect(player_1.hp).to eq(100)
    end
  end

  describe '#reduce_hp' do
    it 'reduces hp by 10' do
      expect(player_1.reduce_hp).to eq(90)
    end
  end

  describe '#attack' do
    it 'allows player to receive #reduce_hp' do
      player_1.attack(player_2)
      expect(player_2.hp).to eq(90)
    end
  end
end
