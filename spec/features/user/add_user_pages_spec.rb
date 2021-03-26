require 'rails_helper'

describe "the user sign up process" do

  scenario "the user should be able to sign up from the nav bar" do

    visit '/'
    click_on 'Sign up'

    fill_in 'user_email', with: 'user1@user.com'
    fill_in 'user_password', with: 'asdasdasd'
    fill_in 'user_password_confirmation', with: 'asdasdasd'
    click_button 'Sign up'

    expect(page).to have_content 'Welcome user1@user.com'

  end

end