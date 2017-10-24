# require_relative "../db/seeds.rb"
# require_relative "../app/models/api_communicator.rb"
# require_relative "../app/models/command_line_interface.rb"
require_relative "../config/environment.rb"

  menu_level_1 = ["Personal Collections","Search Gallery","Exit"]
  menu_level_2 = [""]
 welcome
 user = get_user
 if user.has_collection == true
   puts "Welcome Back, #{user.name}!"
 else
   puts "Thanks for signing up, #{user.name}!"
   user.create_collection
  end

loop do
  # binding.pry
  prints_menu(menu_level_1)
  response = get_user_input("")
  case response
  when "1"
    list_collections(user)
    # prints_menu()
  when "2"
    search_gallery
  when "3"
    break
  end
end
