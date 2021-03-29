require 'rails_helper'

context "bot module creates a bot in the db but returns usable passwords for testing when called from module" do

  before :each do
    Bot.make
  end

  it "creates 2 bots" do
    expect(User.count).to eq 2
  end

  it "creates a admin first" do
    expect(User.first.admin).to eq true
  end

  it "creates a user second" do
    expect(User.second.admin).to eq false
  end

  it "returns an admins values" do

    admin_presets = {
      email: 'admin@admin.com',
      password: 'asdasdasd',
      password_confirmation: 'asdasdasd',
      admin: true
    }

    expect(Bot.admin[:email]).to eq admin_presets[:email]
    expect(Bot.admin[:password]).to eq admin_presets[:password]
    expect(User.first.password).not_to eq Bot.admin[:password]
    expect(User.first.id).to eq Bot.admin[:id]

  end

  it "returns an users values" do

    user_presets = {
      email: 'user@user.com',
      password: 'asdasdasd',
      password_confirmation: 'asdasdasd',
      admin: false
    }

    expect(Bot.user[:email]).to eq user_presets[:email]
    expect(Bot.user[:password]).to eq user_presets[:password]
    expect(User.second.password).not_to eq Bot.user[:password]
    expect(User.second.id).to eq Bot.user[:id]

  end

end