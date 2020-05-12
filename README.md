# CoSI README
__Contributors: Grace, Jamie, Ally, Vidush, Henry__

----------

## Overview

This document contains all of the information needed to continue working on the CoSI website project. Information about the current website setup is under __File Locations and Info__ and __Contact Page Additional Info__, as well as in comments mentioned in those sections. The gems we used are listed in the __Gems__ section. The remaining work for the next group to do is listed in the __Tasks for Next Group__ section, and some of our advice is listed in the __General Advice__ section. Lastly, there is a __License__ section which details the copyrights and our main sources. Below are links to all the main resources needed for this project, and how to get set up.

#### Important links

* CoSI original website URL (still in use): https://cosicentraliowa.org/
* Our website URL: https://cosicentraliowa.herokuapp.com/
* All website prototypes and our community partner meeting notes: https://docs.google.com/document/d/1yUEkut__8ZKVZPuTgrXMM4tWBSXsMRKUVcHI-bDgFfQ/edit?usp=sharing
* Notes taken by our community partners: https://docs.google.com/document/d/1Q_7CE9BUyGDGXsBs6xLU1BRfE0SpnP7mnvzutK-EweY/edit?usp=sharing
* Google Webmaster Account (for search engine optimization + ask Barbara (prof) for access): https://search.google.com/search-console?resource_id=https%3A%2F%2Fcosicentraliowa.herokuapp.com%2F&hl=en
* Our Final Presentation and Final Team Report (ask Barbara (prof) for access)

#### How to access and install the code
* Make sure you have:
  + Rails version 5.1.6
  + Ruby version 2.5.7
  + Accounts on Heroku and GitHub, ask Barbara (prof) to add you to the CoSI projects for each
  + sqlite3
  + You'll eventually need to install postgreSQL and Heroku command-line (we suggest getting these now)
* Clone the GitHub repo on your local device
* cd into your new local git directory and run the commands `bundle update` and `bundle install`
* Link to Heroku
  + See https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes for help
* Don't make any changes without first branching (`git checkout -b new-branch-name`)
* Good luck!

----------

## File Locations and Info

Most pages have three versions: English (pagename.html.erb), Spanish (sp_pagename.html.erb), and French (fr_pagename.html.erb). Each page has a provide statement at the top with its langage (e.g. for English, `<% provide(:lang, "en") %>`), and only the English pages currently have content and are visible on the site.

__Header and Footer views:__ `app/views/layouts/`

__Home and Volunteer pages view:__ `app/views/static_pages/`
* Controller: `app/controllers/static_pages_controller.rb`
* Tests: `test/controllers/static_pages_controller_test.rb`
  + Includes tests for all pages

__Resources page view:__ `app/views/resources/`
* Resources page code __needs editing!__
  + Currently, the code to display the Spanish-version link and title is not generalized. See lines 64-71 for the problem and additional info. Please fix this.
* Controller: `app/controllers/resources_controller.rb`
* Test: `test/controllers/resources_controller_test.rb`
* Model (for database): `app/models/community_resource.rb`
* Data (for database): `db/seeds.rb`
  + Database setup and usage is __well documented in this file (`db/seeds.rb`).__ See this file for all database information, including information about each database field and how to seed the database locally and on Heroku.
  + To add fields to the database, please see https://stackoverflow.com/questions/4834809/adding-a-column-to-an-existing-table-in-a-rails-migration
  + Please use migrations for all database changes. *_Don't_ edit `schema.rb`*
* _Note: entries in our database can be tagged. You can use these tags to make the database searchable. We used the [Acts as Taggable gem:](https://medium.com/le-wagon/acts-as-taggable-on-tutorial-with-rails-5-417a862804b6) https://medium.com/le-wagon/acts-as-taggable-on-tutorial-with-rails-5-417a862804b6_

__Contact page view:__ `app/views/contacts/new.html.erb`
* _Note: we don’t have the other languages’ pages set up for the Contact page. You guys will have to set them up with their contact forms. The contact form code will probably be very similar (you guys may be able to get away with using the same model)._
* Controller: `app/controllers/contacts_controller.rb`
  + This controller determines the email subject dropdown and has the method to send the emails
* Test: `test/controllers/contacts_controller_test.rb`
* Model (for form): `app/models/contact.rb`
  + We’re using the mailform gem, so we don’t need any explicit mailers. 
  + It’s also possible to change the format of the email if you don’t like how it looks right now (it’s the default). Instructions are on the mailform github README file: https://github.com/heartcombo/mail_form
* Configuration: SEE BELOW
* Passwords/Accounts: SEE BELOW

__General page layout:__ `app/views/layouts/application.html.erb`

__Integration tests:__ `test/integration/site_layout_test.rb`

__CSS for all pages:__ `app/assets/stylesheets/custom.scss`

__Page routes:__ `config/routes.rb`

__Sitemap:__ `config/sitemap.rb`
* Uses the sitemap generator gem (in the Gemfile) to generate sitemaps, which are then discoverable by search engines, and help in indexing the various pages. 
* In its current form it only generates a rudimentary sitemap that probably won’t include more than the home page. All the routes in the page (every page), need to be added in the final iteration of the sitemap

---------

## Contact Page Additional Info

### Configuration
Development environment: `config/environments/development.rb`
* For the local environment (localhost:3000)
* To test without sending actual emails: use the mailcatcher gem
  1. Install the gem on your local computer by running gem install mailcatcher in your terminal. DO NOT put this in the Gemfile. 
    + You may need to run `sudo gem install mailcatcher` if it says you don’t have permission
  2. Uncomment the code in the `development.rb` file labeled ‘CONTACT FORM TESTING’
  3. Comment the code in the `development.rb` file labeled ‘CONTACT FORM GMAIL’
  4. Run mailcatcher by typing mailcatcher in your terminal.
  5. Open a new tab with url http://localhost:1080. __This page will catch your emails.__ Go to the contact page and send an email. The mailcatcher tab should display the email in its list as soon as it is intercepted by the server.
* To send actual emails 
  + Make sure you uninstall the mailcatcher gem. Comment out the mailcatcher section in the `development.rb` file. Uncomment the gmail configuration.

Production: `config/environments/production.rb`
* For the Heroku environment
* Configures the website to send emails to the CoSI Gmail using the Gmail SMTP server

### Passwords/Accounts
We are directly using the Gmail SMTP server for our website. This prevents our mail from being marked as spam or failing to send because it comes from an outside source/location. To do this, we created a special App Password for the CoSI website.

App Password: _This is used in both the development.rb and production.rb files to send emails to gmail. It’s currently hidden away as an environmental variable `ENV[‘COSI_PASS’]` so it doesn’t display to everyone on Github. Please make sure to always use an environment password and never directly input the App Password in this file! Note that we use the App Password instead of the Gmail account password like some tutorials may tell you to do - this is to prevent our emails from being marked as spam or from not being sent because it’s from an unidentified source._
* Run heroku config on your terminal - this should list all the “environment” variables on Heroku. The app password is currently saved as variable `COSI_PASSWORD`
* If you want to send emails to Gmail in development, you must set this same password as an environment password in your local computer with the variable name `COSI_PASSWORD`. Here’s a tutorial on how to do that on a Mac (it may differ if you use zsh instead of bash, but not by much). None of us has a Windows computer, but you could probably find a tutorial on it pretty easily.
  + https://medium.com/@youngstone89/setting-up-environment-variables-in-mac-os-28e5941c771c

Updating the App Password: https://support.google.com/accounts/answer/185833?hl=en
* Must be updated every time the Gmail account password is reset
* REQUIRES TWO-FACTOR AUTHENTICATION!  (ask Prof. Johnson for access)
* Remember to update this variable in the heroku config variables and your local environment variables if you update it for the website.

Gmail Account:
* Username: cosicontactus@gmail.com
  + We created this account and used it for testing the emails (it’s different from the email listed in the footer/contact page because the CoSI board is changing and we didn’t have access to it). Our community partners still do not have access to this account, so you guys will probably have to share it with them
* Password: Ask Professor Johnson
* The account uses Google Authenticator so multiple people can have access. It’s available as an app for your phone.

---------

## Gems

Gems we used:
* Acts as Taggable: https://medium.com/le-wagon/acts-as-taggable-on-tutorial-with-rails-5-417a862804b6
* Mailcatcher: https://mailcatcher.me/
* Mailform: https://github.com/heartcombo/mail_form, https://everydayrails.com/2011/09/07/rails-contact-form.html
* Site map generator: Used for search engine. See more information at the end of the "File Locations and Info" section.

---------

## Tasks for Next Group

### Things to fix:
* Contact form: display an error if the user doesn’t select a subject in the dropdown
  + Right now the app just crashes
  + See Hartl tutorial for help on implementing
* Resources page: Currently, the code to display the Spanish-version link and title is not generalized. If a Spanish-version link exists in the database, it will always be displayed as “Lista de Recursos en la Comunidad” (“List of Community Resources”), which is currently the only resource with a Spanish version, but there will likely be others in the future. See lines 64-71 for the problem and additional info.
* Volunteer page: Refactor. Right now, most of the formatting is in `static_pages/volunteer.html.erb`, and should be moved to `custom.scss`

### Main tasks:
* French and Spanish language support
  + Language toggle on top right of each page (see prototypes linked in "Overview" section)
  + Gem suggested by Cassie (alumni mentor): https://guides.rubyonrails.org/i18n.html
  + Can delete other languages on top navbar (header), homepage, and resources navbar after it’s set up. Ask community partners whether they want to remove the Spanish in the logo or not.
* Functionality to directly upload PDFs into database
  + This will likely be easiest if you create a new database similar to the current one, but instead of "link" and "splink" categories, it would have categories for the information needed to render the PDF, likely stored elsewhere
  + Look into Amazon S3 to store PDF resources
  + Gem suggested by Cassie (alumni mentor) for setting up the PDF database: https://guides.rubyonrails.org/i18n.html
* Improve search engine optimization
  + Google, but also other search engines (Bing, Yahoo, etc.)
  + In other languages?
* Check formatting on other devices and platforms (e.g. phone, tablet; firefox, etc.)
* Searchable database feature
  + Add a search bar to the top left of the resources page (see prototypes linked in "Overview" section)
  + We suggest using the tag functionality (see Acts As Taggable On gem in the "Gems" section)
* A form for community partners to edit the database
  + Priority = add resources
  + Ideal = edit/ remove resources

### Additional potential tasks:
* Add validation on form for email/phone number format
* Link to PayPal to accept donations on the volunteer/donation page
* Usability testing
* Additional potential desired pages and features __(ask community partners)__:
  + Current events calendar?
  + Immigration news?
  + FAQ?
  + Board member selection? (Password protected)

---------

## General Advice

If CSS changes or images don’t show up on the heroku app, try running `rails assets:precompile` on your local terminal, adding and commiting the changes, and then pushing it to heroku again.

We used Slack to communicate with our alumni mentor, texting and google docs to communicate with each other and store notes, and Trello to record our tasks for each sprint.

Trello link: https://trello.com/b/jiE2JaUw

More helpful tips are located in our Final Team Report (ask Barbara (prof) for access).

---------

## License

The contents of this site itself are property of Community Support for Immigrants, Copyright 2020, all rights reserved. The underlying source code used to display the content is licensed under the [MIT license](LICENSE.md).

### Sources
* Ruby on Rails Tutorial: Learn Web Development with Rails. Copyright © 2016 by Michael Hartl. Last updated 2020/04/08 16:22:49 PT.
* Materials from Grinnell College CSC 324-01, Spring 2020
