class Piece < ActiveRecord::Base
    belongs_to :collection
    belongs_to :gene
end
