require 'game'

describe Game do
  
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }
  
  describe "#attack" do
    it "can reduce the players HP by 10" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe "#player_1" do
    it "returns the first player" do
      expect(game.player_1).to eq player_1
    end
  end
  describe "#player_2" do
    it "returns the second player" do
      expect(game.player_2).to eq player_2
    end
  end
  # describe "#turn" do
  #   it "returns "


  # I think I want to return who's turn it is from the game object
end

