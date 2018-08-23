require_relative '../../app.rb'

feature "The Battle app" do

  scenario "can display two players' names" do
    visit("/")
    fill_in("player_1", with: "Hamish")
    fill_in("player_2", with: "Sarah")
    click_button("Fight!")
    expect(page).to have_content("Hamish v. Sarah, the showdown of the century")
  end

  scenario "can display a players hit points" do
    visit("/")
    fill_in("player_1", with: "Hamish")
    fill_in("player_2", with: "Sarah")
    click_button("Fight!")
    expect(page).to have_content("Hamish HP: 100")
  end

end