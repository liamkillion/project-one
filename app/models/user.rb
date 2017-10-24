# name
class User < ActiveRecord::Base
   has_many :collections, dependent: :destroy
   has_many :pieces, through: :collections
end
