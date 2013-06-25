# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# a = Employer.new
# a.name = ""
# a.company_name = ""
# a.city = ""
# a.email = ""
# a.password = ""
# a.save


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


