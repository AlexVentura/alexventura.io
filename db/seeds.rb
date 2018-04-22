# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate a secure random password for the default user
# Go to '/users/sign_in' and click on 'Forgot your password?' and RESET your password
# Set a new password
randomPassword = Devise.friendly_token.first(8)
mainAdminUser = User.new(
	name: "Alejandro Ventura Contreras",
	email: "lex.venturac@gmail.com",
	password: randomPassword,
	password_confirmation: randomPassword
)
mainAdminUser.skip_confirmation!
mainAdminUser.save!
