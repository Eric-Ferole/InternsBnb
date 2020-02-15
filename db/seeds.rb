require 'open-uri'
require 'pry-byebug'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Job.destroy_all

puts 'Creating Users...'

users_attributes = [
{ company_name:"National Bank of Canada", street_address:"600 Rue de la Gauchetière O 28e étage", postal_code:"H3B 4L2", city:"Montreal", province:"Quebec", country:"Canada", website:"https://jobs.nbc.ca/", email:"test1@test.com", password:"1234sunshine" },
{ company_name:"Ivado Lab", street_address:"1100 Avenue des Canadiens-de-Montréal Suite 401", postal_code:"H3B 2S2", city:"Montreal", province:"Quebec", country:"Canada", website:"www.ivadolab.ca", email:"test2@test.com", password:"1234sunshine" },
{ company_name:"Lightspeed", street_address:"700 Rue Saint Antoine E", postal_code:"H2Y 1A6", city:"Montreal", province:"Quebec", country:"Canada", website:"https://www.lightspeedhq.com/careers/", email:"test3@test.com", password:"1234sunshine" },
{ company_name:"CGI", street_address:"1350 Boulevard René-Lévesque O", postal_code:"H3G 1T4", city:"Montreal", province:"Quebec", country:"Canada", website:"https://www.cgi.com/en/careers", email:"test4@test.com", password:"1234sunshine" },
{ company_name:"Google", street_address:"1253 Avenue McGill College", postal_code:"H3B 2Y5", city:"Montreal", province:"Quebec", country:"Canada", website:"https://careers.google.com/jobs/", email:"test5@test.com", password:"1234sunshine" },
{ company_name:"AutoDesk", street_address:"10 Rue Duke", postal_code:"H3C 2L7", city:"Montreal", province:"Quebec", country:"Canada", website:"https://www.autodesk.com/careers", email:"test9@test.com", password:"1234sunshine" },
{ company_name:"Cirque du Soleil", street_address:"8400 2e Avenue", postal_code:"H1Z 4M6", city:"Montreal", province:"Quebec", country:"Canada", website:"https://www.cirquedusoleil.com/careers", email:"test10@test.com", password:"1234sunshine" },{ company_name:"Deloitte", street_address:"1190 Avenue des Canadiens-de-Montréal #500", postal_code:"H3B 0M7", city:"Montreal", province:"Quebec", country:"Canada", website:"https://careers.deloitte.ca/", email:"test12@test.com", password:"1234sunshine" },
{ company_name:"Warner Brothers Games Montréal", street_address:"888 Boulevard de Maisonneuve East", postal_code:"H2L 4M8", city:"Montreal", province:"Quebec", country:"Canada", website:"https://wbgamesmontreal.com/en/jobs", email:"test13@test.com", password:"1234sunshine" },
{ company_name:"CBC/Radio-Canada", street_address:"1400 Boulevard René-Lévesque E", postal_code:"H2L 2M2", city:"Montreal", province:"Quebec", country:"Canada", website:"https://cbc.radio-canada.ca/en/working-with-us/jobs", email:"test14@test.com", password:"1234sunshine" },
{ company_name:"Morgan Stanley", street_address:"700 Rue Wellington", postal_code:"H3C 3S4", city:"Montreal", province:"Quebec", country:"Canada", website:"https://www.morganstanley.com/people/people-montreal", email:"test15@test.com", password:"1234sunshine" },
{ company_name:"Morneau Shepell", street_address:"800 Rue du Square-Victoria", postal_code:"H4Z 0A4", city:"Montreal", province:"Quebec", country:"Canada", website:"https://www.morneaushepell.com/ca-en/careers", email:"test16@test.com", password:"1234sunshine" },
{ company_name:"CAE", street_address:"Chemin de la Côte-de-Liesse", postal_code:"H4T 1G6", city:"St-Laurent", province:"Quebec", country:"Canada", website:"https://www.cae.com/careers/", email:"test17@test.com", password:"1234sunshine" },
{ company_name:"Frank and Oak", street_address:"160 Rue St Viateur East", postal_code:"H2T 1A8", city:"Montreal", province:"Quebec", country:"Canada", website:"www.frankandoak.com", email:"test19@test.com", password:"1234sunshine" }]

puts 'Adding logos...'

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581790147/BNC_pjbkgy.png')
  new_user = User.new(users_attributes[0])
  new_user.logo.attach(io: file, filename: 'BNC_logo.png', content_type: "image/png")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/IvadoLab_te3q05.jpg')
  new_user = User.new(users_attributes[1])
  new_user.logo.attach(io: file, filename: 'IvadoLab_logo.jpg', content_type: "image/jpg")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Lightspeed_yidekp.png')
  new_user = User.new(users_attributes[2])
  new_user.logo.attach(io: file, filename: 'Lightspeed_logo.png', content_type: "image/png")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/CGI_drm5ii.png')
  new_user = User.new(users_attributes[3])
  new_user.logo.attach(io: file, filename: 'CGI_logo.png', content_type: "image/png")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Google_jvdnwz.png')
  new_user = User.new(users_attributes[4])
  new_user.logo.attach(io: file, filename: 'Google_logo.png', content_type: "image/png")
  new_user.save!

# file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Lg2_i6czqa.png')
#   new_user = User.new(users_attributes[5])
#   new_user.logo.attach(io: file, filename: 'Lg2_logo.png', content_type: "image/png")
#   new_user.save! doesnt work

# file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581797999/PixelCircus_osdsd8.png')
#   new_user = User.new(users_attributes[6])
#   new_user.logo.attach(io: file, filename: 'PixelCircus_logo.png', content_type: "image/png")
#   new_user.save! doesnt work

# file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789941/Ubisoft_k5cdqo.svg')
#   new_user = User.new(users_attributes[7])
#   new_user.logo.attach(io: file, filename: 'Ubisoft_logo.svg', content_type: "image/svg")
#   new_user.save! doesnt work

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Autodesk_seackn.png')
  new_user = User.new(users_attributes[5])
  new_user.logo.attach(io: file, filename: 'Autodesk_logo.png', content_type: "image/png")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Cirque_du_Soleil_ky0trp.png')
  new_user = User.new(users_attributes[6])
  new_user.logo.attach(io: file, filename: 'Cirque_du_Soleil_', content_type: "image/png")
  new_user.save!

# file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/MindGeek_t8hmdi.jpg')
#   new_user = User.new(users_attributes[10])
#   new_user.logo.attach(io: file, filename: 'MindGeek_logo.jpg', content_type: "image/jpg")
#   new_user.save! doesnt work

# file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Deloitte_bp6cgn.png')
#   new_user = User.new(users_attributes[11])
#   new_user.logo.attach(io: file, filename: 'Deloitte_logo.png', content_type: "image/png")
#   new_user.save! doesnt work

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789941/WB_Games_qliuqa.png')
  new_user = User.new(users_attributes[7])
  new_user.logo.attach(io: file, filename: 'WB_Games_Montreal_logo.png', content_type: "image/png")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/RadioCanada_ct7d5m.jpg')
  new_user = User.new(users_attributes[8])
  new_user.logo.attach(io: file, filename: 'RadioCanada_logo.jpg', content_type: "image/jpg")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789941/Morgan-Stanley_cmlqig.jpg')
  new_user = User.new(users_attributes[9])
  new_user.logo.attach(io: file, filename: 'Morgan-Stanley_logo.jpg', content_type: "image/jpg")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789941/MorneauShepell_kpeivy.jpg')
  new_user = User.new(users_attributes[10])
  new_user.logo.attach(io: file, filename: 'MorneauShepell_logo.svg', content_type: "image/svg")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/CGI_drm5ii.png')
  new_user = User.new(users_attributes[11])
  new_user.logo.attach(io: file, filename: 'logo.png', content_type: "image/png")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/FrankandOak_mdo0tc.png')
  new_user = User.new(users_attributes[12])
  new_user.logo.attach(io: file, filename: 'FrankandOak_ogo.png', content_type: "image/png")
  new_user.save!



puts 'Creating Jobs...'
jobs_attributes = [
  {
    name:"UX Designer",
    description:"Enter a description",
    category:"Finance",
    duration:"6 months",
    user: User.find_by(company_name:"National Bank of Canada")
  },
  {
    name:"UX/UI Designer",
    description:"Enter a description",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"Ivado Lab")
  },
  {
    name:"Web designer",
    description:"Enter a description",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"Lightspeed")
  },
  {
    name:"UX Designer",
    description:"Enter a description",
    category:"Finance",
    duration:"6 months",
    user: User.find_by(company_name:"CGI")
  },
  {
    name:"Front End developer",
    description:"Enter a description",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"Google")
  },
  {
    name:"Full Stack PHP Developer",
    description:"Enter a description",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"AutoDesk")
  },
  {
    name:"Software Developer",
    description:"Enter a description",
    category:"Finance",
    duration:"More than 6 months",
    user: User.find_by(company_name:"Cirque du Soleil")
  },
  {
    name:"Product owner",
    description:"Enter a description",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"Warner Brothers Games Montréal")
  },
  {
    name:"Scrum master",
    description:"Enter a description",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"CBC/Radio-Canada")
  },
  {
    name:"Project coordinator",
    description:"Enter a description",
    category:"Finance",
    duration:"More than 6 months",
    user: User.find_by(company_name:"Morgan Stanley")
  },
  {
    name:"Product owner",
    description:"Enter a description",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"Morneau Shepell")
  },
  {
    name:"Scrum master",
    description:"Enter a description",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"CAE")
  },
  {
    name:"Project coordinator",
    description:"Enter a description",
    category:"Finance",
    duration:"More than 6 months",
    user: User.find_by(company_name:"Frank and Oak")
  }
]
Job.create!(jobs_attributes)
puts 'Finished!'
