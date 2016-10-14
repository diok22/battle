require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "confirms when player is attacked" do

    sign_in_and_play
    click_button "Launch Attack!!"

    expect(page).to have_text("You attacked Player2!")
  end
  scenario "returns to /play page" do

    sign_in_and_play
    click_button "Launch Attack!!"
    click_link "Return to Play!"

    expect(page).to have_text("Player2 vs Player1")
  end
end
