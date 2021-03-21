require 'rails_helper'

describe "entering the website" do
  scenario "the user enters the website from the home page" do
    visit '/'
    expect(page).to have_content 'Products'
  end
end