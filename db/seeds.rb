# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "test_user", first_name: "Test", last_name: "User")

companies = Company.create([{ name: "Google", address: "1234 Google Way", website: "www.google.com"},
                           { name: "Apple", address: "1234 Apple Way", website: "www.apple.com" },
                           { name: "Jaguer", address: "4567 Jaguar Way", website: "www.jaguar.com"},
                           { name: "New Relic", address: "SW 6th Avenue", website: "www.newrelic.com" }])

applications = JobApplication.create([{ company_id: 1, user_id: 1, date_submitted: "12/24/2015", status: "open"},
                                     { company_id: 2, user_id: 1, date_submitted: "1/02/2016", status: "open" },
                                     { company_id: 3, user_id: 1, date_submitted: "2/03/2016", status: "closed" },
                                     { company_id: 4, user_id: 1, date_submitted: "3/04/2016", status: "closed" }])
