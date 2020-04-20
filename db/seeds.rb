# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

community_recources = CommunityResource.create([{category: "Language Assistance", name: "ESL Classes, High School Diploma, Citizenship Prep Courses", link: "https://ce.iavalley.edu/adult-literacy/esl/", email: "ivetc@iavalley.edu", phone: "641-754-1348", description: "For ESL classes, high school diploma and citizenhip preparation courses, please contact the Iowa Valley Continuing education. To get exact schedule of classes and cost, please follow the link."}, {category: "Language Assistance", name: "Free Online English Class, Drake Community Library", link: "https://my.nicheacademy.com/dcl/course/1103", email: "library@grinnelliowa.gov", description: "Learn English online through a free program via the Drake Community Library Academy"}, {category: "Legal Assistance", name: "Legal Services: Iowa Justice for Our Neighbors", link: "http://www.iowajfon.org", address: "2024 Forest Ave. Suite 101, Des Moines, IA 50311", phone: "515-255-9809", description: "A non-profit organization that provides free immigration legal services, education, and advocacy."}, {category: "Language Assistance", title: "Legal Help Online Tool from Immi", link: "https://www.immi.org/es/home/index", description: "Free help to understand legal options for immigrants in the U.S., including an online screening tool, legal information, and referrals to nonprofit legal services."}, {category: "Legal Assistance", name: "AFSC Iowa's List of Immigration Lawyers", link: "https://www.afsc.org/program/iowa-immigrant-rights-program"}, {category: "Legal Assistance", name: "Information about Iowa Immigration Law and Policy", link: "https://ailp.law.uiowa.edu", description: "University of Iowa's AILP Law & Policy Project is an online compilation of materials used by students to understand Iowa law and policy around immigration."}, {category: "Community Resources", name: "List of Community Resources", link: "https://grinnell.lib.ia.us/wp-content/uploads/Current_Resource_Guide.pdf", description: "Drake Community Library's list of resources in the community, in English and Spanish. Resources are not specifically immigration-related."}])
