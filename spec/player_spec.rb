require 'player'

describe Player do

  it "can return its name" do
    player = Player.new("Hamish")
    expect(player.name).to eq "Hamish"
  end

end 