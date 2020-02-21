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
{ company_name:"National Bank of Canada", street_address:"600 Rue de la Gauchetière O 28e étage Montreal, Canada", country:"Canada", website:"https://jobs.nbc.ca/", email:"test1@test.com", password:"1234sunshine" },
{ company_name:"Ivado Lab", street_address:"1100 Avenue des Canadiens-de-Montréal Suite 401 Montreal, Canada", country:"Canada", website:"www.ivadolab.ca", email:"test2@test.com", password:"1234sunshine" },
{ company_name:"Lightspeed", street_address:"700 Rue Saint Antoine E Montreal, Canada", country:"Canada", website:"https://www.lightspeedhq.com/careers/", email:"test3@test.com", password:"1234sunshine" },
{ company_name:"CGI", street_address:"1350 Boulevard René-Lévesque O Montreal, Canada", country:"Canada", website:"https://www.cgi.com/en/careers", email:"test4@test.com", password:"1234sunshine" },
{ company_name:"Google", street_address:"1253 Avenue McGill College Montreal, Canada", country:"Canada", website:"https://careers.google.com/jobs/", email:"test5@test.com", password:"1234sunshine" },
{ company_name:"Lg2", street_address:"3575 Boul St-Laurent Montreal, Canada", country:"Canada", website:"www.lg2.com", email:"test6@test.com", password:"1234sunshine" },
{ company_name:"Pixel Circus", street_address:"204-3875 Rue Saint-Urbain Montreal, Canada", country:"Canada", website:"www.pixelcircus.ca", email:"test7@test.com", password:"1234sunshine" },
{ company_name:"Ubisoft", street_address:"5505 Boul St-Laurent #2000 Montreal, Canada", country:"Canada", website:"https://montreal.ubisoft.com/en/your-career/", email:"test8@test.com", password:"1234sunshine" },
{ company_name:"AutoDesk", street_address:"10 Rue Duke Montreal, Canada", country:"Canada", website:"https://www.autodesk.com/careers", email:"test9@test.com", password:"1234sunshine" },
{ company_name:"Cirque du Soleil", street_address:"8400 2e Avenue Montreal, Canada", country:"Canada", website:"https://www.cirquedusoleil.com/careers", email:"test10@test.com", password:"1234sunshine" },
{ company_name:"MindGeek", street_address:"7777 Boulevard Décarie Montreal, Canada", country:"Canada", website:"https://www.mindgeek.com/careers/", email:"test11@test.com", password:"1234sunshine" },
{ company_name:"Deloitte", street_address:"1190 Avenue des Canadiens-de-Montréal #500 Montreal, Canada", country:"Canada", website:"https://careers.deloitte.ca/", email:"test12@test.com", password:"1234sunshine" },
{ company_name:"Warner Brothers Games Montréal", street_address:"888 Boulevard de Maisonneuve East Montreal, Canada", country:"Canada", website:"https://wbgamesmontreal.com/en/jobs", email:"test13@test.com", password:"1234sunshine" },
{ company_name:"CBC/Radio-Canada", street_address:"1400 Boulevard René-Lévesque E Montreal, Canada", country:"Canada", website:"https://cbc.radio-canada.ca/en/working-with-us/jobs", email:"test14@test.com", password:"1234sunshine" },
{ company_name:"Morgan Stanley", street_address:"700 Rue Wellington Montreal, Canada", country:"Canada", website:"https://www.morganstanley.com/people/people-montreal", email:"test15@test.com", password:"1234sunshine" },
{ company_name:"Morneau Shepell", street_address:"800 Rue du Square-Victoria Montreal, Canada", country:"Canada", website:"https://www.morneaushepell.com/ca-en/careers", email:"test16@test.com", password:"1234sunshine" },
{ company_name:"CAE", street_address:"Chemin de la Côte-de-Liesse Montreal, Canada", country:"Canada", website:"https://www.cae.com/careers/", email:"test17@test.com", password:"1234sunshine" },
{ company_name:"Frank and Oak", street_address:"160 Rue St Viateur East Montreal, Canada", country:"Canada", website:"www.frankandoak.com", email:"test19@test.com", password:"1234sunshine" }]

User.create!(users_attributes)

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
    name:"Back End developer",
    description:"Enter a description",
    category:"Finance",
    duration:"6 months",
    user: User.find_by(company_name:"Pixel Circus")
  },
  {
    name:"Ruby Rails RoR Developer",
    description:"Enter a description",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"Ubisoft")
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
    name:"Software engineering",
    description:"Enter a description",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"MindGeek")
  },
  {
    name:"Full Stack Developper",
    description:"Enter a description",
    category:"Finance",
    duration:"6 months",
    user: User.find_by(company_name:"Deloitte")
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
