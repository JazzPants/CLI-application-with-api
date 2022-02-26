#for database management
require 'sinatra/activerecord'
require 'active_record'
require 'rake'

#for HTTP request
require 'net/http'
require 'open-uri'
require 'json'
require 'bundler'
require 'sqlite3'
require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/users.sqlite',
)

#use rake migrations so we can create SQL table in ruby
# sql = <<-SQL
# CREATE TABLE IF NOT EXISTS users (
# id INTEGER PRIMARY KEY,
# username TEXT
# )
# SQL
# ActiveRecord::Base.connection.execute(sql)

# require_relative '../lib/musicapi'
require_relative '../lib/cli'
# require_relative '../lib/createuser'
require_relative '../lib/user'
require_relative '../lib/playlist'
