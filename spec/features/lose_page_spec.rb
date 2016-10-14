require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "A player wins the game" do

    sign_in_and_play

    9.times do
      click_button 'Launch Attack!!'
      click_link "Return to Play!"
    end

    expect(page).to have_text("The game has ended!")
  end
end
