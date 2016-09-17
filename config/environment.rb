# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
 ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => 'reckerswartz',
  :password => 'Pk176543#',
  :domain => 'http://139.59.5.234',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}


