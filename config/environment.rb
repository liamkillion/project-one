require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'
require 'catpix'
require_relative '../app/models/collection.rb'
require_relative '../app/models/gene.rb'
require_relative '../app/models/piece.rb'
require_relative '../app/models/user.rb'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/arts.db"
)

require_all 'app/'
