Total Campground
=================

Introduction
------------
This is a Ruby on Rails based web application for managing a campground.
This currently 'works for us' and is branded for our company use. Use at you
own discretion.

Dependencies
------------
* [Ruby on Rails](http://www.rubyonrails.org) 4.1
* Ruby 2+
* Postgresql 9+


Development Setup
-----------------
* In addion to seeding your database with the standard `rake db:seed`, you can
also load in a set of sample data with `rake db:sample_data`.


Configuration
-------------
* Copy config/database.yml.dist to config/database.yml and customize
* Configure SECRET_KEY_BASE environment variable

If you're using the `db:sample_data` task, you'll want to store your admin
username / password to create a sample admin user.

* SAMPLE_ADMIN_EMAIL
* SAMPLE_ADMIN_PASSWORD

Deployment
----------
