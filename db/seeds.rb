# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:email => 'User1@tw.com', :password => 'password' , :password_confirmation => 'password')
User.create!(:email => 'User2@tw.com', :password => 'password' , :password_confirmation => 'password')
User.create!(:email => 'User3@tw.com', :password => 'password' , :password_confirmation => 'password')
User.create!(:email => 'User4@tw.com', :password => 'password' , :password_confirmation => 'password')
