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

{ company_name:"National Bank of Canada", street_address:"600 Rue de la Gauchetière O 28e étage Montreal, Canada", country:"Canada", website:"https://jobs.nbc.ca/", email:"test1@test.com", password:"1234sunshine" },

{ company_name:"Ivado Lab", street_address:"1100 Avenue des Canadiens-de-Montréal Suite 401 Montreal, Canada", country:"Canada", website:"www.ivadolab.ca", email:"test2@test.com", password:"1234sunshine" },

{ company_name:"Lightspeed", street_address:"700 Rue Saint Antoine E Montreal, Canada", country:"Canada", website:"https://www.lightspeedhq.com/careers/", email:"test3@test.com", password:"1234sunshine" },

{ company_name:"CGI", street_address:"1350 Boulevard René-Lévesque O Montreal, Canada", country:"Canada", website:"https://www.cgi.com/en/careers", email:"test4@test.com", password:"1234sunshine" },

{ company_name:"Google", street_address:"1253 Avenue McGill College Montreal, Canada", country:"Canada", website:"https://careers.google.com/jobs/", email:"test5@test.com", password:"1234sunshine" },

{ company_name:"AutoDesk", street_address:"10 Rue Duke Montreal, Canada", country:"Canada", website:"https://www.autodesk.com/careers", email:"test9@test.com", password:"1234sunshine" },

{ company_name:"Cirque du Soleil", street_address:"8400 2e Avenue Montreal, Canada", country:"Canada", website:"https://www.cirquedusoleil.com/careers", email:"test10@test.com", password:"1234sunshine" },

{ company_name:"Warner Brothers Games Montréal", street_address:"888 Boulevard de Maisonneuve East Montreal, Canada", country:"Canada", website:"https://wbgamesmontreal.com/en/jobs", email:"test13@test.com", password:"1234sunshine" },

{ company_name:"CBC/Radio-Canada", street_address:"1400 Boulevard René-Lévesque E Montreal, Canada", country:"Canada", website:"https://cbc.radio-canada.ca/en/working-with-us/jobs", email:"test14@test.com", password:"1234sunshine" },

{ company_name:"Morgan Stanley", street_address:"700 Rue Wellington Montreal, Canada", country:"Canada", website:"https://www.morganstanley.com/people/people-montreal", email:"test15@test.com", password:"1234sunshine" },

{ company_name:"Morneau Shepell", street_address:"800 Rue du Square-Victoria Montreal, Canada", country:"Canada", website:"https://www.morneaushepell.com/ca-en/careers", email:"test16@test.com", password:"1234sunshine" },

{ company_name:"Frank and Oak", street_address:"160 Rue St Viateur East Montreal, Canada", country:"Canada", website:"www.frankandoak.com", email:"test19@test.com", password:"1234sunshine" }]

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

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Autodesk_seackn.png')
  new_user = User.new(users_attributes[5])
  new_user.logo.attach(io: file, filename: 'Autodesk_logo.png', content_type: "image/png")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/Cirque_du_Soleil_ky0trp.png')
  new_user = User.new(users_attributes[6])
  new_user.logo.attach(io: file, filename: 'Cirque_du_Soleil_', content_type: "image/png")
  new_user.save!

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
  new_user.logo.attach(io: file, filename: 'MorneauShepell_logo.jpg', content_type: "image/jpg")
  new_user.save!

file = URI.open('https://res.cloudinary.com/dfnvi7ruc/image/upload/v1581789940/FrankandOak_mdo0tc.png')
  new_user = User.new(users_attributes[11])
  new_user.logo.attach(io: file, filename: 'FrankandOak_logo.png', content_type: "image/png")
  new_user.save!

puts 'Creating Jobs...'
jobs_attributes = [
  {
    name:"UX Designer",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"6 months",
    user: User.find_by(company_name:"National Bank of Canada")
  },
  {
    name:"UX/UI Designer",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"Ivado Lab")
  },
  {
    name:"Web designer",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"Lightspeed")
  },
  {
    name:"UX Designer",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"6 months",
    user: User.find_by(company_name:"CGI")
  },
  {
    name:"Front End developer",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"Google")
  },
  {
    name:"Full Stack PHP Developer",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"3-6 months",
    user: User.find_by(company_name:"AutoDesk")
  },
  {
    name:"Software Developer",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"More than 6 months",
    user: User.find_by(company_name:"Cirque du Soleil")
  },
  {
    name:"Product owner",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"Warner Brothers Games Montréal")
  },
  {
    name:"Scrum master",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"CBC/Radio-Canada")
  },
  {
    name:"Project coordinator",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"More than 6 months",
    user: User.find_by(company_name:"Morgan Stanley")
  },
  {
    name:"Product owner",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"3 months",
    user: User.find_by(company_name:"Morneau Shepell")
  },
  {
    name:"Project coordinator",
    description:"We have an exciting opportunity for a seasoned Backend Web Developer. Our well known tech company network establishes millions of connections and enables goods to move through retail and e-commerce every given day. We’re a well recognized industry leader with a vast customer base; but we’re still small enough to be agile, challenge the status quo and know that what we do matters.

Top Reasons to Work with Us
• Great people / Cool Digs
• Autonomy while you work
• The sky is your limit

What You Will be Doing
• Designing and developing scalable applications for web
• Practicing Agile/Scrum process by participating in daily scrum, retrospective, planning and demo
• Troubleshooting and assisting to resolve production support issue
• Simply put…deliver results to take our products to the next level to make an even bigger impact!

What You Need to Succeed
• 5+ years hands-on development experience of web development
• Working knowledge of; MS SQL, SQL, Developing and performance tuning Stored Procedures, .NET
• Framework, C#, VB, Web Services/API, API Scalability and performance tuning
• Experience in an Agile environment delivering production ready code every sprint
• Experience in Micro services
• Solid knowledge of authentication and authorization
• Knowledge of DB design
• Experience with integration and performance testing
• Native Mobile implementation (iOS/Android) experience is considered an asset

What’s in it for You
• Be part of a great team where people enjoy working with each other
• Gym membership coverage
• Medical, dental and vision coverage
• Paid parking and transit allowance
• Matching RPP & discount stock purchase program
• Future learning opportunities with tuition reimbursement
• Modern and open work space with an interactive lunch room and great views of the city from our office space
• Centrally located with easy access to public transportation, and exceptionally close proximity to highways and shopping malls
• A fun work environment with staff lunches and frequent social activities
• Free Cycle Loan Program during the summer
• Casual dress code
• $1,500 referral bonus for new hire recommendations
• Lots more – check us out at https://transcore.ca/careers
• If you pride yourself on being a sharp ambitious developer and are passionate about technology, then we
• would love to hear from you! Send us your resume.

By applying to this position you are confirming you possess either a Canadian citizenship, permanent resident status or work permit.",
    category:"Finance",
    duration:"More than 6 months",
    user: User.find_by(company_name:"Frank and Oak")
  }
]
Job.create!(jobs_attributes)
puts 'Finished!'
