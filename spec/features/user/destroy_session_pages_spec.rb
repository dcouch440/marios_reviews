require 'rails_helper'

describe "the user log out process" do


  scenario "if the user is logged in they should be able to log out" do

    Bot.make

    visit '/'
    click_on 'Sign in'

    fill_in 'user_email', with: Bot.user[:email]
    fill_in 'user_password', with: Bot.user[:password]
    click_on 'Log in'

    click_button 'Sign out'

    expect(page).to have_content 'Sign in'

  end

end
