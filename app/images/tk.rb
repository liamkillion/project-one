# require 'tk'
#
# $resultsVar = TkVariable.new
# root = TkRoot.new
# root.title = "Window"
# myFont = TkFont.new("family" => 'Helvetica', "size" => 20, "weight" => 'bold')
# Lbl = TkLabel.new(root) do
#    textvariable
#    borderwidth 5
#    font myFont
#    foreground  "red"
#    relief      "groove"
#    pack("side" => "right",  "padx"=> "50", "pady"=> "50")
# end
#
# Lbl['textvariable'] = $resultsVar
# $resultsVar.value = 'New value to display'
#
# Tk.mainloop
# require 'tk'
#
# $resultsVar = TkVariable.new
# root = TkRoot.new
# root.title = "Window"
#
# image = TkPhotoImage.new
# image.file = "zara.gif"
#
# label = TkLabel.new(root)
# label.image = image
# label.place('height' => image.height,
#             'width' => image.width,
#             'x' => 10, 'y' => 10)
# Tk.mainloop
# require 'tk'
#
# $resultsVar = TkVariable.new
# root = TkRoot.new
# root.title = "Window"
#
# image = TkPhotoImage.new
# image.file = "monalisa.jpeg"
#
# label = TkLabel.new(root)
# label.image = image
# label.place('height' => image.height, 'width' => image.width, 'x' => 10, 'y' => 10)
# Tk.mainloop

# require "tco"
# require "rmagick"
#
# img = Magick::Image::read(ARGV[0]).first
# img.each_pixel do |pixel, col, row|
#   c = [pixel.red, pixel.green, pixel.blue].map { |v| 256 * (v / 65535.0) }
#   pixel.opacity == 65535 ? print("  ") : print("  ".bg c)
#   puts if col >= img.columns - 1
# end

require 'RMagick'
 include Magick

 cat = ImageList.new("./download.png")
 cat.display
 exit
