
require_relative "../config/environment.rb"

 def welcome
   puts "Welcome Art Fan!"
 end

def get_user
   input= get_user_input("Please enter your name to log in")
   User.find_or_create_by(name: input)
 end

 def get_user_input(message)
   puts message
   input = gets.chomp
 end

def prints_menu(array)
  puts "Please make your selection"
  array.each_with_index {|memo,index| puts "#{index + 1} - #{memo}"}
end

def list_collections(user)
  # binding.pry
  user.collections.all.each_with_index{|x,index|puts "#{index+1} - #{x.name}"}
end

def search_by_artists
  input = get_user_input("Please enter the name ot the artist")
  # Api call
end

def search_by_genes
  input = get_user_input("Please enter the name of the gene")
  # Api call
end

def exit
  puts "Thank you visiting us!!!"
end

binding.pry
