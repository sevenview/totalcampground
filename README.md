Total Campground
=================

Requirements
------------
* [Ruby on Rails](http://www.rubyonrails.org) 4.1
* Ruby 2+

Configuration
-------------
* Copy config/database.yml.dist to config/database.yml and customize

Deployment
----------
* Configure SECRET_KEY_BASE environment variable

Tasks
-----
In addion to seeding your database with the standard `rake db:seed`, you can
also load in a set of sample data with `rake db:sample_data`.
