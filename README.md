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
In addition to seeding your database with the standard `rake db:seed`, you can
also load in a set of sample data with `rake db:sample_data`.

To test email delivery install [Mailcatcher](https://github.com/sj26/mailcatcher)

```
$ gem install mailcatcher
$ mailcatcher
$ open http://localhost:1080
```
Configuration
-------------
* Copy `config/database.yml.dist` to `config/database.yml` and customize
* Configure `SECRET_KEY_BASE` environment variable

If you're using the `db:sample_data` task, you'll want to store your admin
username / password to create a sample admin user.

* `SAMPLE_ADMIN_EMAIL`
* `SAMPLE_ADMIN_PASSWORD`

We're using [Mailtrap.io](http://mailtrap.io) to deliver test emails on the
Staging server. Username and password are stored in environment variables:

* `MAILTRAP_USER_NAME`
* `MAILTRAP_PASSWORD`

In order to encrypt database columns, you need to set

* `DB_ENCRYPTION_KEY`

Deployment
----------

We deploy to Heroku.

### Addons
* [Mandrill](https://addons.heroku.com/mandrill) for email delivery.
