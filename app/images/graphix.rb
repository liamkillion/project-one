require 'catpix'
require 'pry'
source = "/Users/cunha/Development/project-one/app/images/download.png"
source = "https://d32dm0rphc51dk.cloudfront.net/BNqPRA9serVa2mFO2ToL5A/big_and_tall.jpg"
Catpix::print_image source,
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :bg => "white",
  :bg_fill => true,
  :resolution => "low"

  binding.pry
