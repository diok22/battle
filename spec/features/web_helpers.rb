def sign_in_and_play
  visit "/"
  fill_in "player_1", with: "Player1"
  fill_in "player_2", with: "Player2"
  click_button "Enter"
end
