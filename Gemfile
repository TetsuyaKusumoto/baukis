source 'https://rubygems.org'

ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.13', '< 0.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
  gem 'sextant'
  gem 'jquery-ui-rails'
  gem 'quiet_assets'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

## Jissen Ruby on Rails 4 -- P47
# V8 JavaScript interpriter
gem 'therubyracer', platforms: :ruby
# password encryption
gem 'bcrypt', '~> 3.1.7'
# XML/HTML analyzer
gem 'nokogiri', '~> 1.6.1'
# Error translation
gem 'rails-i18n', '~> 4.0.1'

# rails 4.2以降ではデフォルトでサポートされるようになったため不要
#gem 'foreigner'
gem 'kaminari'
gem 'date_validator'
gem 'email_validator'


group :test do
#  gem 'rspec-rails', '~> 3.0.0.beta2'
  gem 'rspec-rails'
  gem 'spring-commands-rspec', '~> 1.0.1'
  gem 'capybara', '~> 2.2.1'
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'database_cleaner', '~> 1.2.0'
end
