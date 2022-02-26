require 'pry'
require 'sinatra/activerecord/rake'
require 'sinatra/activerecord'
# require './db/migrate/01_create_users.rb'
# namespace :greeting do
#   desc 'outputs hello to the terminal'
#   task :hello do
#     puts 'hello from Rake!'
#   end

#   desc 'outputs hola to the terminal'
#   task :hola do
#     puts 'hola de Rake!'
#   end
# end

# namespace :db do

#   #   desc 'migrate changes to your database'
#   #   task migrate: :environment do
#   #     # require './db/migrate/01_create_users.rb'
#   #     CreateUsers.create_table
#   #   end

#   desc 'drop into the Pry console'
#   task console: :environment do
#     Pry.start
#   end
# end

namespace :db do
  task :environment do
    require_relative './config/environment'
  end
  task :load_config do
    require './config/environment.rb'
  end

  desc 'drop into the Pry console'
  task console: :environment do
    Pry.start
  end
end
