require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "Attack reduces Player's 2 HP by 10" do

  sign_in_and_play
  click_button "Launch Attack!!"

  expect(page).to have_text("Player2 HP: 90")
  end
end
