source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# MAIN
gem 'rails'
gem 'puma'
gem 'foreman'
gem 'unicode'
gem 'jbuilder', '~> 2.5'
gem 'uglifier', '>= 1.3.0'
# PREPROCESSORS
gem 'haml'
gem 'sass-rails'
gem 'coffee-rails'
# DATABASE
gem 'sqlite3', platforms: :ruby
gem 'jdbc-sqlite3', platforms: :jruby
# JS ENGINE
gem 'therubyracer', platforms: :ruby
gem 'therubyrhino', platforms: :jruby
# JS LIBS
gem 'turbolinks', '~> 5'
gem 'jquery-rails'
gem 'jquery-turbolinks'
# RUBY LIBS
gem 'nokogiri'
# ASSETS
gem 'material_icons'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
