source 'https://rubygems.org'

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# using postgres as stated in canvas
gem 'pg'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Haml as the templating library
gem 'haml'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

gem 'geocoder'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick', '~> 4.3'


# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_girl_rails'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'rails-controller-testing'

  # # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'web-console', '~> 2.0'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~>2.0.0'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  # Adds suport for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with chrome
  gem 'chromedriver-helper'
  gem 'simplecov', require: false
  gem 'reek', require: false
end

group :production do
  # gem 'pg', '~> 0.21' # for Heroku deployment
  gem 'rails_12factor'
end
