# name_of_collection
class Collection < ActiveRecord::Base
  belongs_to :users
  has_many :pieces
  has_many :genes, through: :pieces
end
