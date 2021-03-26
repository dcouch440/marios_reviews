module Bot

  def self.make
    User.destroy_all
    User.create!(
      email: 'admin@admin.com',
      password: 'asdasdasd',
      password_confirmation: 'asdasdasd',
      admin: true
    )
    User.create!(
      email: 'user@user.com',
      password: 'asdasdasd',
      password_confirmation: 'asdasdasd'
    )
  end

  def self.admin
    User.where(email: 'admin@admin.com').first
  end

  def self.user
    user = User.where(email: 'user@user.com').first
  end

end