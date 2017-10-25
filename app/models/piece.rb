class Piece < ActiveRecord::Base
    belongs_to :collection
    belongs_to :gene


    # It prints out the picture from the url on the terminal
    # source has to be the full path.
  def print
    Catpix::print_image self.img_url,
      :limit_x => 1.0,
      :limit_y => 0,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true,
      :resolution => "low"
    end

    def local_methods
      # [:id,name:,:url,:img_url,:artist_name,:gene_id,:collection_id]
    end

end
