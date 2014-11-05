source 'https://rubygems.org'

gemspec

gem 'activerecord',  '~> 4.1.0'
gem 'activesupport', '~> 4.1.0'

platform :jruby do
  gem 'activerecord-jdbcsqlite3-adapter', '~> 1.3.0'
end

platform :ruby do
  gem 'sqlite3', '~> 1.3.8'
end
