source "https://rubygems.org"
ruby "2.2.0"

gem "rails", "4.2.1"

# Use postgresql as the database for Active Record
gem "pg"

# Use puma as the webserver
gem "puma"

# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"

# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.1.0"

# Use jquery as the JavaScript library
gem "jquery-rails"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"

# Use devise for user authentication
gem "devise"

# URL slugging and permalinking
gem "friendly_id", "~> 5.1.0"

gem "gravatar-ultimate"

# Markdown processing
gem "redcarpet"

# Filepicker
gem "filepicker-rails"

# Partial date storage & retrieval
gem "partial-date", git: "https://github.com/0xazure/partial-date.git"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem "sdoc", "~> 0.4.0"
end

group :development, :test do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem "web-console", "~> 2.0"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"

  # Static code analysis & file linting
  gem "rubocop"

  gem "dotenv-rails"
end

group :production do
  # Heroku deployment dependency
  gem "rails_12factor"
end
