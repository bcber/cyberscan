source 'https://rubygems.org'

gem 'rails', '3.2.17'
gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'cancan'
gem 'figaro'
gem 'haml-rails'
gem 'rolify'
gem 'simple_form'
gem 'unicorn'

gem 'workflow'

gem 'sidekiq'
gem 'sinatra', '>= 1.3.0', :require => nil
gem 'slim'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'launchy'
  gem 'simplecov', :require => false
end
