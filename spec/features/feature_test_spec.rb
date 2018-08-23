require_relative '../../app.rb'

feature "The Battle app" do

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





# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation