# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seeding powers
Power.create(name: "Super Strength", description: "Gives the wielder super-human strengths")
Power.create(name: "Flight", description: "Gives the wielder the ability to fly through the skies at supersonic speed")
Power.create(name: "Invisibility", description: "Allows the wielder to become invisible to the naked eye")
Power.create(name: "Teleportation", description: "Allows the wielder to instantly transport themselves to any location")
Power.create(name: "Regeneration", description: "Allows the wielder to heal from injuries at an accelerated rate")
#powers seeded successfully
# Seeding heroes
Hero.create(name: "Peter Parker", super_name: "Spider-Man")
Hero.create(name: "Bruce Wayne", super_name: "Batman")
Hero.create(name: "Clark Kent", super_name: "Superman")
Hero.create(name: "Diana Prince", super_name: "Wonder Woman")
Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")

#Heroes seeded succesfully
# Seeding hero powers
HeroPower.create(strength: "Average", power_id: 1, hero_id: 1)
HeroPower.create(strength: "Strong", power_id: 2, hero_id: 1)
HeroPower.create(strength: "Weak", power_id: 1, hero_id: 2)
HeroPower.create(strength: "Average", power_id: 2, hero_id: 3)
HeroPower.create(strength: "Strong", power_id: 3, hero_id: 3)
HeroPower.create(strength: "Average", power_id: 4, hero_id: 4)
HeroPower.create(strength: "Weak", power_id: 1, hero_id: 5)
HeroPower.create(strength: "Average", power_id: 2, hero_id: 5)

#Hero powers seeded successfully
