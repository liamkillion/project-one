# require_relative "../db/migrate/seeds.rb"
# # require_relative "../lib/api_communicator.rb"
# # require_relative "../lib/command_line_interface.rb"
# #
# # welcome
# # loop do
# #   puts "Type A to search for an artist or C to see a list of available categories of art, or exit to quit"
# #   response=gets.chomp
# #   if response == "A"
# #     artist = get_artist_from_user
# #     show_film(film)
# #   elsif response == "C"
# #     character = get_character_from_user
# #     puts "Type P for personal information or L for list of movies"
# #     response = gets.chomp
# #     if response == "P"
# #       show_character_info(character)
# #     elsif response == "L"
# #       show_character_movies(character)
# #     end
# #   elsif response == "exit"
# #     break
# #   end
# # end
# welcome
# user = get_user
# if user.has_collection
#   puts "Welcome Back!"
# else
#   puts "Thanks for signing up!"
#   Pieces.all.img_url.each do |url|
#     open url
#   end
#   puts "W"
# end
