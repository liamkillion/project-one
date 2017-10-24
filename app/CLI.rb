 def welcome
   puts "Welcome Art Fan!"
 end

def get_user
   puts "Please enter your name to log in"
   input= gets.chomp
   User.find_or_create_by(name: input)
 end
