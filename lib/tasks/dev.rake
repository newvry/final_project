namespace :dev do

  desc "Rebuild system"
  task :rebuild => ["db:drop", "db:setup", :fake]

  task :fake => :environment do
      # puts "Create fake data for development"
      User.destroy_all

      User.create(email: 'alpha@camp', 
                  password: '111111',
                  role: 'admin',
                  level: 'Advanced Level')
      12.times do
        User.create!(email: Faker::Internet.email,
                     password: '111111',
                     name: Faker::Name.first_name,
                     remote_image_url: Faker::Avatar.image,
                     mobile_phone: '3345678',
                     level: ["Entry Level", "Medium Level", "Advanced Level"].sample,
                     intro: Faker::Lorem.sentence(3, true))
      end

  end
end