# README
## Contributors: Grace, Jamie, Ally, Vidush, Henry

CoSI original website URL (still in use): https://cosicentraliowa.org/
Our website URL: https://cosicentraliowa.herokuapp.com/

## File locations
* Header and Footer views: app/views/layouts/
* Home and Volunteer pages view: app/views/static_pages/
  + Controller: app/controllers/static_pages_controller.rb
  + Tests: test/controllers/static_pages_controller_test.rb
    • Includes tests for all pages
* Resources page view: app/views/resources/
  + Controller: app/controllers/resources_controller.rb
  + Test: test/controllers/resources_controller_test.rb
  + Model (for database): app/models/community_resource.rb
  + Data (for database): db/seeds.rb
  + Note: entries in our database can be tagged. You can use these tags to make the database searchable. We used the Acts as Taggable gem: https://medium.com/le-wagon/acts-as-taggable-on-tutorial-with-rails-5-417a862804b6
* Contact page view: app/views/contacts/new.html.erb
  + Note: we don’t have the other languages’ pages set up for the Contact page. You guys will have to set them up with their contact forms. * The contact form code will probably be very similar (you guys may be able to get away with using the same model).
  + Controller: app/controllers/contacts_controller.rb
    • This controller determines the email subject dropdown and has the method to send the emails
  + Test: test/controllers/contacts_controller_test.rb
  + Model (for form): app/models/contact.rb
    • We’re using the mailform gem, so we don’t need any explicit mailers. 
    • It’s also possible to change the format of the email if you don’t like how it looks right now (it’s the default). Instructions are on the mailform github README file: https://github.com/heartcombo/mail_form
  + Configuration: SEE BELOW


## License

The contents of this site itself are property of Community Support for Immigrants, Copyright 2020, all rights reserved. The underlying source code used to display the content is licensed under the [MIT license](LICENSE.md).
