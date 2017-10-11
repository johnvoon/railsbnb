# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.create!(title: 'Coder Academy', street_address: '120 Spencer Street', city: 'Melbourne', country_code: 'au', bed_count: 35, bedroom_count: 1, bathroom_count: 3, description: 'Cosy up to code', night_fee_cents: 5000, cleaning_fee_cents: 1000)
Listing.create!(title: 'General Assembly', street_address: '12A, 45 William Street', city: 'Melbourne', country_code: 'au', bed_count: 35, bedroom_count: 1, bathroom_count: 3, description: 'Cosy up to code', night_fee_cents: 5000, cleaning_fee_cents: 1000)
Listing.create!(title: 'Hack Reactor', street_address: '944 Market Street', city: 'San Francisco', country_code: 'us', bed_count: 35, bedroom_count: 1, bathroom_count: 3, description: 'Cosy up to code', night_fee_cents: 5000, cleaning_fee_cents: 1000)
