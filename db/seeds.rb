# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

companies = Company.create([{ name: "Google", address: "1234 Google Way", website: "www.google.com"},
                           { name: "Apple", address: "1234 Apple Way", website: "www.apple.com" },
                           { name: "Jaguar", address: "4567 Jaguar Way", website: "www.jaguar.com"},
                           { name: "New Relic", address: "SW 6th Avenue", website: "www.newrelic.com" }])
