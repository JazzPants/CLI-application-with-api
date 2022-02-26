#for database management
require 'active_record'

#for HTTP request
require 'net/http'
require 'open-uri'
require 'json'

require_relative '../lib/musicapi'
require_relative '../lib/cli'
require_relative '../lib/user'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/user.sqlite',
)

sql = <<-SQL
CREATE TABLE IF NOT EXISTS users (
id INTEGER PRIMARY KEY,
username TEXT
)
SQL

ActiveRecord::Base.connection.execute(sql)
