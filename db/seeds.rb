# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

player = Player.new(name: "messi", position: "forward", nationality: "argentina", dob: 1987)
player.save

player = Player.new(name: "iniesta", position: "midfielder", nationality: "spain", dob: 1984)
player.save

player = Player.new(name: "xavi", position: "midfielder", nationality: "spain", dob: 1980)
player.save

player = Player.new(name: "henry", position: "forward", nationality: "france", dob: 1977)
player.save

player = Player.new(name: "puyol", position: "defender", nationality: "spain", dob: 1978)
player.save
