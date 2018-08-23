require_relative '../../app.rb'

feature "The Battle app" do

  scenario "can display two players' names" do
    sign_in_and_play
    expect(page).to have_content("Hamish v. Sarah, the showdown of the century")
  end

  scenario "can display a players hit points" do
    sign_in_and_play
    expect(page).to have_content("Hamish HP: 100")
  end

end