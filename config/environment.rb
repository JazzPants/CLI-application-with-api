#for database management
require 'active_record'

#for HTTP request
require 'net/http'
require 'open-uri'
require 'json'
require 'bundler'
require 'sqlite3'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/users.sqlite',
)

sql = <<-SQL
CREATE TABLE IF NOT EXISTS users (
id INTEGER PRIMARY KEY,
username TEXT
)
SQL

ActiveRecord::Base.connection.execute(sql)

class User < ActiveRecord::Base
end
p User.column_names

p User.all

require_relative '../lib/musicapi'
require_relative '../lib/cli'
require_relative '../lib/createuser'
