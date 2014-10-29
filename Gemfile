source 'https://rubygems.org'
ruby '2.0.0'


# SYSTEM
gem 'rails', '4.2.0.beta2'                  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'pg'                                    # Use postgresql as the database for Active Record
gem "dotenv-rails"                          # Slurp in the .env file even during rake tasks
gem 'unicorn'                               # Use Unicorn as the app server


# ASSET PIPELINE
gem 'sass-rails', '~> 5.0.0.beta1'          # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                  # Use Uglifier as compressor for JavaScript assets
gem 'jquery-rails'                          # Use jquery as the JavaScript library
gem 'autoprefixer-rails'
gem 'font-awesome-rails'                    # Helper to use Font Awesome icons
gem 'bootstrap-sass', '~> 3.2.0'            # Twitter Boostrap for Sass
gem 'bootstrap_form'                        # Bootstrap forms helper
gem 'rails-html-sanitizer', '~> 1.0'        # Use Rails Html Sanitizer for HTML sanitization


# JSON / API
gem 'jbuilder', '~> 2.0'                    # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc', '~> 0.4.0', group: :doc         # bundle exec rake doc:rails generates the API under doc/api.


# AUTHENTICATION
gem 'devise', git: 'https://github.com/plataformatec/devise.git', :branch => 'lm-rails-4-2'
                                            # Flexible authentication library
gem 'bcrypt', '~> 3.1.7'                    # Use ActiveModel has_secure_password
gem 'omniauth'                              # Allows OAUTH login
gem 'omniauth-github'                       # OAUTH provider for Github




# group :development do
#   gem 'capistrano-rails'                    # Use Capistrano for deployment
# end

group :development, :test do
  gem 'byebug'                              # Call 'debugger' anywhere in the code to stop execution and
                                            # get a debugger console
  gem 'web-console', '~> 2.0.0.beta2'       # Access an IRB console on exceptions page and /console in
                                            # development
  gem 'spring'                              # Spring speeds up development by keeping your application
                                            # running in the background. Read more:
                                            # https://github.com/rails/spring
  gem "rspec-rails"                         # Use RSPEC for tests
end

