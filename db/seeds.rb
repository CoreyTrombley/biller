# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Bill.delete_all

u1 = User.create(:email => "bob@test.com", :password => 'a', :password_confirmation => 'a')

b1 = Bill.create(:name => 'Rent', :description => 'the rent', :amount => 10_000, :day => 1)
b2 = Bill.create(:name => 'Cable', :description => 'Cable bill', :amount => 150, :day => 5)
b3 = Bill.create(:name => 'Credit Card', :description => 'credit card one', :amount => 55, :day => 11)

u1.bills = [b1, b2, b3]