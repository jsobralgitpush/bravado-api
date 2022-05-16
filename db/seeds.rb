# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

file   = File.read("/home/ze/bravado-api/db/seed.json")
robots = JSON.parse(file)

robots.each do |robot|
    Robot.create!(
        name: robot['name'],
        email: robot['email'],
        title: robot['title'], 
        city: robot['city'],
        address: robot['address'],
        avatar: robot['avatar']
    )
end

