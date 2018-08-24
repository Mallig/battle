require_relative '../../app.rb'

feature "The game set up" do

  scenario "can display two players' names" do
    sign_in_and_play
    expect(page).to have_content("Hamish v. Sarah, the showdown of the century")
  end

  scenario "can display a players hit points" do
    sign_in_and_play
    expect(page).to have_content("Sarah HP: 100")
  end
end

feature "Attack player" do

  scenario "player 1 can attack player 2 and get confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content("Hamish attacks Sarah!")
  end

  scenario "player 2's Hit Points are reduced after being attacked by player 1" do
    sign_in_and_play
    click_link "Attack"
    click_link "Return to battle"
    expect(page).to have_content("Sarah HP: 90")
  end
end

feature "Switch turn" do

  scenario "When beginning, UI says it is player 1's turn" do
    sign_in_and_play
    expect(page).to have_content("Hamish's turn!")
  end
  scenario "After the first turn, it is player 2's turn" do
    sign_in_and_play
    click_link "Attack"
    click_link "Return to battle"
    expect(page).to have_content("Sarah's turn!")
  end

end



# As two Players,
# So we can continue our game of Battle,
# We want to switch turns