def sign_in_and_play
  visit("/")
  fill_in("player_1", with: "Hamish")
  fill_in("player_2", with: "Sarah")
  click_button("Fight!")
end