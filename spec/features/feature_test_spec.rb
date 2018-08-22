require_relative '../../app.rb'

feature "The Battle app" do

  scenario "has a home page" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end

end