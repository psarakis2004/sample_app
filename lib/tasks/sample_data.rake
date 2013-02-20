namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		admin = User.create!(name: "Manos",
			email: "patsarakis@gmail.com",
			password: "manos123",
			password_confirmation: "manos123")
			admin.toggle!(:admin)	
			99.times do |n|
				name = Faker::Name.name
				email = "example-#{n+1}@railstutorial.org"
				password = "password"
				User.create!(name: name,
				email: email,
				password: password,
				password_confirmation: password)
			end
	end
end