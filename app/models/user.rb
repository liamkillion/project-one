# name
class User < ActiveRecord::Base
   has_many :collections, dependent: :destroy
end
