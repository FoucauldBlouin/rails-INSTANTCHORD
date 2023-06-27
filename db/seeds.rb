# db/seeds.rb

Instrument.create([{ name: 'Piano' }, { name: 'Guitare' }, { name: 'Violon' }, { name: 'Basse' }])

Style.create([{ chord_style: 'Once', bass_style: 'Once' }, { chord_style: 'Arp 1-2', bass_style: 'Once' }, { chord_style: 'Arp 1-2-3', bass_style: 'Once' }, { chord_style: 'OffBeat', bass_style: 'Once' }])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
