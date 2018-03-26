source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.5"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
# gem "therubyracer", platforms: :ruby
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "faker"
gem "ffaker"
gem "friendly_id", "~> 5.1.0"
gem "devise"
gem "bootstrap", "~> 4.0.0"
gem "sprockets-rails", :require => "sprockets/railtie"
gem "jquery-rails"
gem "petergate"
gem "jquery-turbolinks"
gem "font-awesome-rails"
gem "kaminari"
gem "jquery-ui-rails"
gem "mini_magick"
gem 'carrierwave'
gem 'carrierwave-aws'
gem 'dotenv-rails', '~> 2.1'
gem "cocoon"
gem "gritter", "1.2.0"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
