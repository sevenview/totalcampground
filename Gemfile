source 'https://rubygems.org'

ruby '2.1.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.17.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 3.1.1'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.2.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Dotenv to load .env variables. Load early before any gems that depend
# on variables
gem 'dotenv-rails', '~> 0.11.1', groups: [:development, :test]

group :development do
  gem 'spring', '~> 1.1.3'
  gem 'lol_dba', '~> 1.6.0' # Find missing indexes with rake db:find_indexes
  # Guard, to automatically run tests and more
  gem 'guard', '~> 2.6.1'
  gem 'guard-rspec', '~> 4.2.10'
  gem 'guard-migrate', '~> 1.1.0'
  gem 'guard-bundler', '~> 2.0.0'
  gem 'foreman', '~> 0.74.0', require: false # we just want this one available at cmd line

  # give us more informative errors in dev
  gem 'better_errors', '~> 1.1.0'
  gem 'binding_of_caller', '~> 0.7.2' # provides REPL with better_errors

  # Annotate models
  gem 'annotate', '~> 2.6.5'
end

group :test do
  gem 'poltergeist', '~> 1.5.1'
  gem 'capybara', '~> 2.3.0'
  # Launchy is required so we can call save_and_open_page in Capybara
  gem 'launchy', '~> 2.4.2'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'shoulda-matchers', '~> 2.6.1'
end

group :development, :test do
  gem 'rspec', '~> 3.0.0'
  gem 'rspec-rails', '~> 3.0.1'
  # better spec progress formatter
  gem 'fivemat', '~> 1.3.1'
end

gem 'factory_girl_rails', '~> 4.4.1', group: [:development, :test, :staging]

# Generate fake data
gem 'ffaker', '~> 1.24.0', group: [:development, :test, :staging]

# Common helpers used for Sevenview projects
gem 'sevenhelpers', git: 'https://github.com/sevenview/sevenhelpers.git'

# Use Thin web server
# TODO: switch to Unicorn
gem 'thin', '~> 1.6.2'

# Heroku config
gem 'rails_12factor', '~> 0.0.2', group: [:staging, :production]

# Bootstrap CSS framework
gem 'bootstrap-sass', '~> 3.2.0.0'

# Bootstrap datepicker
gem 'bootstrap-datepicker-rails', '~> 1.3.0.2'

# Bootswatch templates
gem 'bootswatch-rails', '~> 3.1.1.1'

# Slim templating instead of default ERB
gem 'slim-rails', '~> 2.1.5'

# Devise for authentication
gem 'devise', '~> 3.2.0'

# Make JS libraries play nice with Turbolinks
gem 'jquery-turbolinks', '~> 2.0.2'

# Kaminari for pagination
gem 'kaminari', '~> 0.16.1'
gem 'bootstrap-kaminari-views', '~> 0.0.3'

# Encrypt column data
gem 'attr_encrypted', '~> 1.3.2'
