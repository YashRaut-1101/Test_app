source "https://rubygems.org"

# Use Rails 4.2.6 (compatible with Ruby 2.3.0)
gem "rails", "~> 4.2.6"

# Use sqlite3 for database
gem "sqlite3", "~> 1.3.6"

# Use Puma web server (Rails 4 prefers WEBrick but we can use Puma)
gem "puma", "~> 3.12"

# Asset pipeline (Sprockets required for older Rails versions)
gem "sprockets-rails", "~> 3.2"

# Use Active Model has_secure_password
gem "bcrypt", "~> 3.1.7"

gem 'nokogiri', '1.10.10'
gem 'loofah', '2.9.0'

gem 'bootstrap-sass', '~> 3.4.1'


gem 'sass-rails', '~> 5.0'


gem 'jquery-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mswin mingw x64_mingw jruby]

# Improve boot speed
gem "bootsnap", require: false

# Debugging
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", "~> 2.0"
end



group :test do
  gem "capybara", "~> 2.15"
  gem "selenium-webdriver"
end


gem "nokogiri", "= 1.10.10"
