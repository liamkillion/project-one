require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'
<<<<<<< HEAD
# require 'catpix'
=======
require 'catpix'
require_all 'app/models'
>>>>>>> 36f510869d0f491afafb5f685d09471d37cfe05d


ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/arts.db"
)
