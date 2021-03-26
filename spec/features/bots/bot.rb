module Bot
  def self.gen_users
    @bot_admin = User.create!(
      email: 'admin@admin.com',
      password: 'asdasdasd',
      password_confirmation: 'asdasdasd',
      admin: true
    )
    @bot_user = User.create!(
      email: 'user@user.com',
      password: 'asdasdasd',
      password_confirmation: 'asdasdasd'
    )
  end
end