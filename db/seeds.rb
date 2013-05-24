# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



a = Employer.new
a.name = "tm"
a.company_name = "fu-media"
a.city = "bremen"
a.email = "asd@asd.de"
a.password = "12345678"
a.save


Job.create title: "manager", location: "london", description: "asd", info: "asd", employer: a
Job.create title: "co worker", location: "london", description: "asd", info: "asd", employer: a
Job.create title: "prostitute", location: "london", description: "asd", info: "asd", employer: a


 ActsAsTaggableOn::Tag.create name: "Webdesign"
 ActsAsTaggableOn::Tag.create name: "PHP"
 ActsAsTaggableOn::Tag.create name: "Graphical"
 ActsAsTaggableOn::Tag.create name: "Lonix"
 ActsAsTaggableOn::Tag.create name: "bla"



a = Applicant.new
a.name = "tm  app"
a.city = "bremen"
a.email = "asd@asd.de"
a.password = "12345678"
a.save
