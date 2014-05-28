source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'
gem 'bootstrap-sass', '3.1.1.0'
gem 'bootstrap-datepicker-rails', '1.3.0.2'
gem 'bcrypt-ruby', '3.1.2'
gem 'faker', '1.1.2'
gem 'faker-japanese'
gem 'sprockets', '2.11.0'
gem 'pg', '0.15.1'

gem 'devise', '3.2.4'
gem 'rails_admin', '0.6.2'
gem 'simple_form', '3.0.2'

# will_paginateがいるとrails_adminで一覧表示できなくなる
#gem 'will_paginate', '3.0.4'
#gem 'bootstrap-will_paginate', '0.0.10'
# rails_adminを使う場合は、kaminariのページング
gem 'kaminari'

gem 'enumerize', '0.8.0'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'rspec-rails', '2.13.1'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'
  gem 'factory_girl_rails', '4.2.1'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'libnotify', '0.8.0'
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'rails_12factor', '0.0.2'
end