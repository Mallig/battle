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

  scenario "player 1 can attack player 2 and get confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content("Hamish attacks Sarah!")
  end
end

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation