# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 6.0.1'
  gem 'rubocop', '~> 1.30'
  gem 'rubocop-performance', '~> 1.14'
  gem 'rubocop-rails', '~> 2.14'
  gem 'rubocop-rspec', '~> 2.11'
  gem 'shoulda-matchers', '~> 5.1'
  gem 'simplecov', '~> 0.21.2'
  gem 'factory_bot_rails', '~>  6.2.0'
  gem 'faker', '~> 3.0.0'
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
