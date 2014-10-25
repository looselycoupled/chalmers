# Chalmers


## Getting Started

Install the system requirements as below:

- `ruby 2.0.0` — Install with rbenv, rmv, or Homebrew
- `postgresql` — Install with Homebrew


## Configuring the Environment

Generate a random secret key:

    rake secret

Make a new file called `.env` in your project root and insert the following:

    RACK_ENV=development
    RAILS_ENV=development
    DEVISE_SECRET_KEY=
    GITHUB_CLIENT_ID=
    GITHUB_CLIENT_SECRET=


Then add key values with the following guidelines:


#### RAILS_ENV and RACK_ENV

These variables set the environment mode for the application on boot. They should both be set to `development` in development mode and `production` in production mode. (Rack has it's own environment mode seperate from Rails.)

#### DEVISE_SECRET_KEY

The secret key used by Devise. Devise uses this key to generate random tokens. Changing this key will render invalid all existing confirmation, reset password and unlock tokens in the database.

#### GITHUB_CLIENT_ID

OAUTH ID for Github authentication.

#### GITHUB_CLIENT_SECRET

OAUTH Client Secret for Github authentication.



## Freezing Gems

This part is optional depending on how you are managing your gems.  For instance, if you are using a gemset with RVM this is not necessary.

Freeze dependencies inside `vendor`. This will create `Gemfile.lock` for you.

    bundle install --path ./vendor/bundle

## Boot

If everything went OK, you should be able to start the rails server with `foreman start`:

    $ foreman start
    16:09:06 web.1  | I, [2014-10-24T16:09:06.633729 #63339]  INFO -- : Refreshing Gem list
    16:09:09 web.1  | I, [2014-10-24T16:09:09.528174 #63339]  INFO -- : listening on addr=0.0.0.0:5000 fd=10
    16:09:09 web.1  | I, [2014-10-24T16:09:09.545277 #63339]  INFO -- : master process ready
    16:09:09 web.1  | I, [2014-10-24T16:09:09.549276 #63341]  INFO -- : worker=0 ready
    16:09:09 web.1  | I, [2014-10-24T16:09:09.549421 #63342]  INFO -- : worker=1 ready
    16:09:09 web.1  | I, [2014-10-24T16:09:09.549887 #63343]  INFO -- : worker=2 ready


## Afterward

You need to check the following files to ensure that they meet  requirements:

    config/application.rb
    config/enviroments/development.rb
    config/initalizers/devise.rb


## Deployment

    TBD

## Tagging/Versioning

This codebases uses a form of [Semantic Versioning](http://semver.org/) to structure version numbers.  In general, the results of each sprint will increment the minor version while any special releases (bug fixes, etc.) will increment the patch number.



