source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
gem 'mysql2', '>= 0.3.13', '< 0.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap-sass'
gem 'devise'

# Use Unicorn as the app server
# gem 'unicorn'
group :staging, :production do
	gem 'puma'
end

group :test do
  gem "launchy"
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end

#gem 'capistrano-rails', group: :development

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'pry'
end

