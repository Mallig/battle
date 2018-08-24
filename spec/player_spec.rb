require 'player'
require 'rspec/its'

describe Player do
  subject(:player) { described_class.new("Hamish") }
  subject(:player2) { described_class.new("Doris") }

  describe "#name" do
    it "can return its name" do
      expect(player.name).to eq "Hamish"
    end
  end

  describe "#health" do
    it "can return its health" do
      expect(player.health).to eq 100
    end
  end

end 