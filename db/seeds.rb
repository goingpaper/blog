# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
superuser = User.new
superuser.name = 'goingpaper'
superuser.email = 'atonkin98@gmail.com'
superuser.password = 'finalfantasy'
superuser.password_confirmation = 'finalfantasy'
superuser.save!

