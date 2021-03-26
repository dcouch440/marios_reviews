require 'rails_helper'

describe "the user login process" do

  scenario "if a user is not logged in they should be able to navigate to the log in page from the nav bar" do

    visit '/'
    click_on 'sign-up'

    expect(page).to have_content 'Password confirmation'
  end
  ggi
end
