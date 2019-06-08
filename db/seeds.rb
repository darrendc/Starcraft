# frozen_string_literal: true

Faction.destroy_all
Faction.create(name: "Terran", description: "Human Race")
Faction.create(name: "Protoss", description: "fdsfsdf")
Faction.create(name: "Zerg", description: "fdsfdsf")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
