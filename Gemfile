source 'https://rubygems.org'

ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Dotenv to load .env variables. Load early before any gems that depend
# on variables
gem 'dotenv-rails', groups: [:development, :test]

group :development do
  gem 'spring'
  gem 'lol_dba' # Find missing indexes with rake db:find_indexes
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-migrate'
  gem 'guard-bundler'
  gem 'foreman', require: false # we just want this one available at cmd line

  # give us more informative errors in dev
  gem 'better_errors'
  gem 'binding_of_caller' # provides REPL with better_errors

  # Annotate models
  gem 'annotate'
end

group :test do
  gem 'poltergeist'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'rspec', '~> 3.0.0'
  gem 'rspec-rails'
  # better spec progress formatter
  gem 'fivemat', '~> 1.3.1'
end

gem 'factory_girl_rails', group: [:development, :test, :staging]

# Generate fake data
gem 'ffaker', group: [:development, :test, :staging]

# Common helpers used for Sevenview projects
gem 'sevenhelpers', git: 'https://github.com/sevenview/sevenhelpers.git'

# Use Thin web server
# TODO: switch to Unicorn
gem 'thin'

# Heroku config
gem 'rails_12factor', group: [:staging, :production]

# Bootstrap CSS framework
gem 'bootstrap-sass', '~> 3.2.0.0'

# Bootstrap datepicker
gem 'bootstrap-datepicker-rails'

# Slim templating instead of default ERB
gem 'slim-rails'

# Devise for authentication
gem 'devise', '~> 3.2.0'

# Make JS libraries play nice with Turbolinks
gem 'jquery-turbolinks'

# Kaminari for pagination
gem 'kaminari'
gem 'bootstrap-kaminari-views'

# Encrypt column data
gem 'attr_encrypted'
