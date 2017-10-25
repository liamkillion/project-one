require_relative "../db/seeds.rb"
require_relative "../app/models/api_communicator.rb"
require_relative "../app/models/command_line_interface.rb"
require_relative "../config/environment.rb"

  Menu_1 = ["Personal Collections","Search Gallery","Exit"]
  Menu_2 = ["Search Collection","Go Back"]
  Menu_3 = ["Show Pieces","Search for Pieces","Go Back"]
 welcome
 user = get_user
 if user.has_collection == true
   puts "Welcome Back, #{user.name}!"
 else
   puts "Thanks for signing up, #{user.name}!"
   user.create_collection
  end
  menu_1(user)
