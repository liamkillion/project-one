ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.
# 
# task task_name: :environment do
# end

task :console do
  Pry.start
end
