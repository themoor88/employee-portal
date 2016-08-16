# Create sample users
user1 = User.new(
  name: 'User1',
  email: 'user1@example.com',
  password: 'password',
  password_confirmation: 'password',
)
user1.skip_confirmation!
user1.save!

user2 = User.new(
  name: 'User2',
  email: 'user2@example.com',
  password: 'password',
  password_confirmation: 'password',
)
user2.skip_confirmation!
user2.save!
