require 'rails_helper'

describe "the user login process" do

  scenario "if a user is not logged in they should be able to navigate to the log in page from the nav bar" do

    visit '/'
    click_on 'Sign up'

    expect(page).to have_content 'Password confirmation'

  end

  scenario "if the user exist they should be able to log in" do

    Bot.make

    visit '/'
    click_on 'Sign in'

    fill_in 'user_email', with: Bot.user[:email]
    fill_in 'user_password', with: Bot.user[:password]
    click_on 'Log in'

    expect(page).to have_content 'Welcome user@user.com'

  end

end
