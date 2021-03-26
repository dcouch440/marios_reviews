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
    admin = User.first
    {
      id: admin.id,
      email: admin.email,
      password: 'asdasdasd'
    }
  end

  def self.user
    user = User.last
    {
      id: user.id,
      email: user.email,
      password: 'asdasdasd'
    }
  end

end