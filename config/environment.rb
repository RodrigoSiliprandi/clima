# Load the Rails application.
require_relative 'application'

Time::DATE_FORMATS[:date] = "Data %b, %m %Y - %I:%M%p"

# Initialize the Rails application.
Rails.application.initialize!
