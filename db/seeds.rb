# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the `rails db:seed` command.
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin

#############################
##   ABOUT THIS DOCUMENT   ##
##   Updated May 3, 2020   ##
#############################

This file contains all resources from CoSI (Community Support for Immigrants)
for the database as of May 3, 2020, which is displayed on the resources page of
the CoSI website. Data is provided by leaders in CoSI and some is drawn from
immigrantallies.net by request of CoSI. For display information, see
app/views/resources/resources.html.erb and the documentation below.


#########################################
##  DOCUMENTATION: Format of Database  ##
#     Updated May 3, 2020               #
#########################################

NOTE ABOUT TAGS:
----------------
This database is already set up with tag functionality using the "Acts as
Tagable On" gem. This implementation is SEPARATE from the actual database, and
does not appear here. For more information, see the README.md and this resource:
https://medium.com/le-wagon/acts-as-taggable-on-tutorial-with-rails-5-417a862804b6

 *** Database Structure: ***
+---------------------------+
|    community_resources    | Description/ info:
+---------------------------+ ------------------
| category    | string      | MANDATORY, see documentation below.
+-------------+-------------+
| name        | string      | MANDATORY: Title of resource.
+-------------+-------------+
| link        | string      | url, hyperlinked from name (title) when displayed
+-------------+-------------+
| splink      | string      | url to spanish version, if exists
+-------------+-------------+
| email       | string      | Used to create mailto link when displayed
+-------------+-------------+
| phone       | string      | See documentation below. Format: xxx-xxx-xxx.
+-------------+-------------+
| address     | string      | Displayed on one line
+-------------+-------------+
| contact     | string      | Contact person (name, title, phone, etc.)
+-------------+-------------+
| description | string      | Describes resource, usually ~1-3 sentences.
+-------------+-------------+

CATEGORY : ADDITIONAL INFO
--------------------------
The `category` entry is the category under which the resource desplays on the
resources page. The title of the category must be EXACT, typos will result in
incorrect display (a new category with the misspelling will appear). New
categories are automatically displayed (see resources.html.erb). No two
categories can have the same first word, as categories are determined by first
word. Current categories (as of May 2, 2020) are:
 * Community Resources
 * Education about Immigration
 * Language Assistance
 * Legal Assistance

PHONE : ADDITIONAL INFO
-----------------------
Phone numbers for the `phone` entry should be formatted this way: xxx-xxx-xxx.
All numbers must be from the U.S. or Canada, since they are assumed to start
with +1. This assumption is made in app/views/resources/resources.html.erb,
where the +1 is appended to the front in order to create a clickable tel link
when displayed. This is necessary to support calls from phones of international
origin, which is especially important because the website and links need to be
accessbile to immigrants, who are by definition from countries outside the U.S.


############################
##  HOW TO SEED DATABASE  ##
############################

Locally:
--------
If all data is stored in this file (no data has been entered through a form or
another way), you can re-seed the database locally by clearing all the data
using the `rails db:migrate:reset` command, and then re-seeding with the
`rails db:seed` command. This will wipe all data, not just seed data, which is
why it isn't a good option once you have a form or other input method.

Heroku:
-------
Unfortunately, heroku doesn't support removing information from the database.
To re-seed this database, we have been using the technique of deleting the
database entirely and re-migrating it from GitHub. This has the same problem of
deleting everything as the local method. To delete the heroku database, run the
`heroku pg:reset` command. You will have to confirm which database you would
like to delete. Then run the `heroku run rails db:migrate` command to create a
new, empty database. You can then seed the new database with the command
`heroku run rails db:seed` and everything should be restored.

Our alumni mentor mentioned that you could potentially find/ write SQL code to
temporarily disable the keys/ feature that prevents deletion of data in a heroku
database, and that you could also potentially set up a seed file that checks if
a record exists before seeding the column. We did not do this, nor do we have
any more information about these options.

=end

## Seed data:
community_recources =
CommunityResource.create([{category: "Language Assistance",
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
                           description: "The U.S. Citizenship and Immigration Services (CIS) website is the U.S. Government's main online source of information for immigrants, containing immigration and citizenship information, forms, news, tools, and legal information."}
                         ]) #end seed data
