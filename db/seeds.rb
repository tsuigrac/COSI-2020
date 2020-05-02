# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

community_recources = CommunityResource.create([
                                                 {category: "Language Assistance",
                                                  name: "ESL Classes, High School Diploma, Citizenship Prep Courses/Clases de ESL, de diploma de escuela y de cursos para prepararse para cuidadanía",
                                                  link: "https://ce.iavalley.edu/adult-literacy/esl/",
                                                  email: "ivetc@iavalley.edu", phone: "641-754-1348",
                                                  description: "For ESL classes, high school diploma and citizenhip preparation courses, please contact the Iowa Valley Continuing education. To get exact schedule of classes and cost, please follow the link."},

                                                 {category: "Language Assistance",
                                                  name: "Free Online English Class/Clase gratis en línea",
                                                  link: "https://my.nicheacademy.com/dcl/course/1103",
                                                  email: "library@grinnelliowa.gov",
                                                  description: "Learn English online through a free program via the Drake Community Library Academy"},

                                                 {category: "Legal Assistance",
                                                  name: "Iowa Justice for Our Neighbors",
                                                  link: "http://www.iowajfon.org",
                                                  address: "2024 Forest Ave. Suite 101, Des Moines, IA 50311",
                                                  phone: "515-255-9809",
                                                  description: "A non-profit organization that provides free immigration legal services, education, and advocacy."},

                                                 {category: "Legal Assistance",
                                                  name: "List of Iowa Immigration Lawyers/Lista de abogados de inmigración en Iowa",
                                                  link: "https://www.afsc.org/document/immigration-attorney-list-march-2020"},

                                                 {category: "Legal Assistance",
                                                  name: "Information about Iowa Immigration Law and Policy",
                                                  link: "https://ailp.law.uiowa.edu",
                                                  description: "University of Iowa's AILP Law & Policy Project is an online compilation of materials used by students to understand Iowa law and policy around immigration."},

                                                 {category: "Community Resources",
                                                  name: "List of Community Resources",
                                                  link: "https://grinnell.lib.ia.us/wp-content/uploads/Current_Resource_Guide.pdf",
                                                  splink: "https://grinnell.lib.ia.us/wp-content/uploads/2019/02/Resource_Guide-Spanish.pdf",
                                                  description: "Drake Community Library's list of resources in the community, in English and Spanish. Resources are not specifically immigration-related."},

                                                 {category: "Education about Immigration",
                                                  name: "Fact Sheet: How the U.S. Immigration System Works",
                                                  link: "https://www.americanimmigrationcouncil.org/research/how-united-states-immigration-system-works",
                                                  description: "The American Immigration Council's fact sheet about how the U.S. immigration system works. This is a good starting point for learning the basics about the immigration system and the main paths to obtaining an immigrant visa (become a permanent resident)."},
                                                 
                                                 {category: "Education about Immigration",
                                                  name: "National Immigration Law Center",
                                                  link: "https://www.nilc.org",
                                                  description: "The National Immigration Law Center (NILC) has information about a range of immigration-related topics, including DACA (Deferred Action for Childhood Arrivals), health care, immigration enforcement, taxes, and many more topics."},

                                                 {category: "Education about Immigration",
                                                  name: "United We Dream",
                                                  link: "https://unitedwedream.org",
                                                  description: "United We Dream is a youth-led immigration network. Their website has many resources about immigration-related topics in many formats, including summaries, webinars, and toolkits. It also contains information about how to take action in support of immigrant rights and the rights of undocumented people, as well as health and wellness information."},

                                                 {category: "Education about Immigration",
                                                  name: "U.S. Citizenship and Immigration Services (Government site)",
                                                  link: "https://www.uscis.gov",
                                                  description: "The U.S. Citizenship and Immigration Services (CIS) website is the U.S. Government's main online source of information for immigrants, containing immigration and citizenship information, forms, news, tools, and legal information."}])
