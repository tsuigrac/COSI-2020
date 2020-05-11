# README
__Contributors: Grace, Jamie, Ally, Vidush, Henry__

----------

## Overview

CoSI original website URL (still in use): https://cosicentraliowa.org/

Our website URL: https://cosicentraliowa.herokuapp.com/

All CoSI Prototypes and Community Partner Notes: https://docs.google.com/document/d/1yUEkut__8ZKVZPuTgrXMM4tWBSXsMRKUVcHI-bDgFfQ/edit?usp=sharing

----------

## File locations
__Header and Footer views:__ `app/views/layouts/`

__Home and Volunteer pages view:__ `app/views/static_pages/`
* Controller: `app/controllers/static_pages_controller.rb`
* Tests: `test/controllers/static_pages_controller_test.rb`
  + Includes tests for all pages

__Resources page view:__ `app/views/resources/`
* Controller: `app/controllers/resources_controller.rb`
* Test: `test/controllers/resources_controller_test.rb`
* Model (for database): `app/models/community_resource.rb`
* Data (for database): `db/seeds.rb`
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
* PASSWORDS/ACCOUNTS: SEE BELOW

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

## About the files

Gems we used:
* Acts as Taggable: https://medium.com/le-wagon/acts-as-taggable-on-tutorial-with-rails-5-417a862804b6
* Mailcatcher: https://mailcatcher.me/
* Mailform: https://github.com/heartcombo/mail_form, https://everydayrails.com/2011/09/07/rails-contact-form.html

---------

## Tasks for next group
* Check formatting on other devices and platforms (e.g. phone, tablet; firefox, etc.)
* Improve search engine optimization
* French and Spanish languages (and the language toggle on each page)
  + Can delete other languages on nav bar after it’s set up
* Searchable database feature 
* Functionality to directly upload PDFs into database
  + Look into Amazon S3 to store resources
* Maybe: add validation on form for email/phone number format
* Maybe: link to PayPal to accept donations on the volunteer/donation page
* Contact form: display an error if the user doesn’t select a subject in the dropdown
  + Right now the app just crashes 
* Usability testing
* A form for community partners to edit the database
  + Priority = add resources
  + Ideal = edit/ remove resources
* Additional potential desired pages and features __(ask community partners)__:
  + Current events calendar?
  + Immigration news?
  + FAQ?
  + Board member selection? (Password protected)

---------

## License

The contents of this site itself are property of Community Support for Immigrants, Copyright 2020, all rights reserved. The underlying source code used to display the content is licensed under the [MIT license](LICENSE.md).
