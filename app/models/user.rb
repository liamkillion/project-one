# name
class User < ActiveRecord::Base
   has_many :collections, dependent: :destroy
   has_many :pieces, through: :collections

   def initialize (name)
     @name = name
   end

   def has_collection
     self.collections.empty?
   end

end
