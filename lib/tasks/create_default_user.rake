namespace :create_default_user do
  desc "Create a default user to access the application"
  task migrate: :environment do
    User.create(user_id: User.generate_user_id, name: 'demo', email: 'test@gmail.com', password: '123456')
  end
end