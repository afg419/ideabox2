require 'rails_helper'

RSpec.feature "A user sees ideas", type: :feature do
  scenario "Visits root path and behold!" do
    make_ideas(3)
    visit root_path

    expect(page).to have_content "title0"
    expect(page).to have_content "body0"

    expect(page).to have_content "title1"
    expect(page).to have_content "body1"

    expect(page).to have_content "title2"
    expect(page).to have_content "body2"
  end
end
