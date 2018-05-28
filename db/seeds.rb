# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tile.destroy_all
User.destroy_all
Slot.destroy_all
Map.destroy_all
Campaign.destroy_all
Character.destroy_all

[*0..15].each do |x|
  [*0..15].each do |y|
    Tile.create(page: 1, x: (x*16), y: (y*16))
  end
end

Tile.create(page:1, x: 256, y: 256)
