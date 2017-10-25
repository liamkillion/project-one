
require_relative 'CLI.rb'

  Menu_1 = ["Personal Collections","Search Gallery","Exit"]
  Menu_2 = ["Search Collection","Go Back"]
  Menu_3 = ["Show Pieces","Search for Pieces","Go Back"]
 welcome
 user = get_user
 if user.has_collection == true
   puts "Welcome Back, #{user.name}!"
 else
   puts "Thanks for signing up, #{user.name}!"
   create_collection(user)
  end
  menu_1(user)
