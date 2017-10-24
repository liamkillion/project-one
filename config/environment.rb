require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'
require 'catpix'

require_all 'app'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/arts.db"
)
