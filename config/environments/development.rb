

Rails.application.configure do
    # Settings specified here will take precedence over those in config/application.rb.
    
    # In the development environment your application's code is reloaded on
    # every request. This slows down response time but is perfect for development
    # since you don't have to restart the web server when you make code changes.
    config.cache_classes = false
    
    # Do not eager load code on boot.
    config.eager_load = false
    
    # Show full error reports.
    config.consider_all_requests_local = true
    
    # Enable/disable caching. By default caching is disabled.
    if Rails.root.join('tmp/caching-dev.txt').exist?
        config.action_controller.perform_caching = true
        
        config.cache_store = :memory_store
        config.public_file_server.headers = {
            'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
        }
        else
        config.action_controller.perform_caching = false
        
        config.cache_store = :null_store
    end
    
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.perform_caching = false
    config.action_mailer.perform_deliveries = true
    #config.action_mailer.delivery_method = :sendmail
    

   # *** CONTACT FORM TESTING ***
   # Uncomment the following code if you want to use mailcatcher to test emails.
   # Check the README file to see how to do this.

    #config.action_mailer.delivery_method = :smtp
    #config.action_mailer.smtp_settings = { :address => "localhost", :port => 1025 }
    
    

 #   *** CONTACT FORM GMAIL ***
 #   This section sets up the gmail smtp server to send emails: note that it
 #   actually sends emails to the gmail account if it is uncommented (like right now)!
 #   The password used is the APP PASSWORD created on the gmail account, NOT the gmail
 #   account password. Check the README file for how to
 #   update this password. The password is protected: we created a config var on
 #   Heroku to store it, and you need to create a local ENV variable on your machine.
 #   Do NOT directly input the password here - it's easy
 #   to accidentally push it onto Github where everyone can see it!
    
 #   NOTE: You'll have to create a new password every time you reset the email password.
#    This is easy to do - but you'll have to also update your local ENV variable and
#    Heroku config variable for the contact form to work.
#    
#    NOTE 2: If you want to use mailcatcher to test emails in development, comment out
#    the following config code and uncomment the mailcatcher above. We've found that we
#    had to uninstall mailcatcher in order to switch to sending emails to the gmail
#    account again, which was a little tedious. You may want to find a better way
#    to switch between the two.
#    =end
    
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        address: 'smtp.gmail.com',
        port: 587,
        domain: 'gmail.com',
        user_name: 'cosicontactus@gmail.com',
        password: ENV['COSI_PASS'],
        authentication: 'plain',
        enable_starttis_auto: true
    }
    
    
    # Print deprecation notices to the Rails logger.
    config.active_support.deprecation = :log
    
    # Raise an error on page load if there are pending migrations.
    config.active_record.migration_error = :page_load
    
    # Debug mode disables concatenation and preprocessing of assets.
    # This option may cause significant delays in view rendering with a large
    # number of complex assets.
    config.assets.debug = true
    
    # Suppress logger output for asset requests.
    config.assets.quiet = true
    
    # Raises error for missing translations
    # config.action_view.raise_on_missing_translations = true
    
    # Use an evented file watcher to asynchronously detect changes in source code,
    # routes, locales, etc. This feature depends on the listen gem.
    config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
