#------------------------------------------------------------------------------
# Create sample users
user1 = User.new(
  name: 'User1',
  email: 'user1@example.com',
  password: 'password',
  password_confirmation: 'password'
)
user1.skip_confirmation!
user1.save!

user2 = User.new(
  name: 'User2',
  email: 'user2@example.com',
  password: 'password',
  password_confirmation: 'password'
)
user2.skip_confirmation!
user2.save!

#------------------------------------------------------------------------------
# Create admin user
Admin.create! email: 'admin@crave.com', password: 'password', password_confirmation: 'password'

#------------------------------------------------------------------------------
# Create training stations
TrainingStation.create! name: 'Breakfast'
TrainingStation.create! name: 'Cold Boxes'
TrainingStation.create! name: 'Hot Boxes'
TrainingStation.create! name: 'Hand Out'
TrainingStation.create! name: 'Cashier'
TrainingStation.create! name: 'Prep Assist'
TrainingStation.create! name: 'Prep Lead'
