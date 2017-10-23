# name_of_collection
class Collection < ActiveRecord::Base
  belongs_to :user
  has_many :genes, through: :pieces
end
