# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



a = Employer.new
a.name = "Ben Cole"
a.company_name = "BMC enter"
a.city = "London"
a.email = "employer@example.com"
a.password = "testtest"
a.save


Job.create title: "manager", location: "london", description: "asd", info: "asd", employer: a
Job.create title: "co worker", location: "london", description: "asd", info: "asd", employer: a
Job.create title: "prostitute", location: "london", description: "asd", info: "asd", employer: a


ActsAsTaggableOn::Tag.create name: "Account Management"
ActsAsTaggableOn::Tag.create name: "Advertising / Branding"
ActsAsTaggableOn::Tag.create name: "Business Development"
ActsAsTaggableOn::Tag.create name: "Communications"
ActsAsTaggableOn::Tag.create name: "Copywriting / Writing"
ActsAsTaggableOn::Tag.create name: "Interactive Web / Video"
ActsAsTaggableOn::Tag.create name: "Marketing / Strategy"
ActsAsTaggableOn::Tag.create name: "Media Planning / Buying"
ActsAsTaggableOn::Tag.create name: "Online Marketing"
ActsAsTaggableOn::Tag.create name: "Public / Investor Relations"
ActsAsTaggableOn::Tag.create name: "SEO/SEM"
ActsAsTaggableOn::Tag.create name: "Social Media"
ActsAsTaggableOn::Tag.create name: "User Experience"
ActsAsTaggableOn::Tag.create name: "Web Design / Development"



a = Applicant.new
a.name = "James Smith"
a.city = "Southampton"
a.email = "applicant@example.com"
a.password = "testtest"
a.save
