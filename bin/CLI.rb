
require 'pry'
require_relative '../config/environment.rb'
require_relative 'api_communicator.rb'

 def welcome
   puts "Welcome Art Fan!"
   puts "=================================="
   puts ""
   puts ""
 end

def get_user
   input= get_user_input("Please enter your name to log in")
   User.find_or_create_by(name: input)
 end

 def get_user_input(message="Please make your selection")
   puts message
   input = gets.chomp
 end

def prints_menu(array)
  puts "=================================="
  puts ""
  puts ""
  puts "Please make your selection"
  array.each_with_index {|memo,index| puts "#{index + 1} - #{memo}"}
  puts "=================================="
  puts ""
  puts ""
end

def create_collection(user)
  user.create_collection
end


def list_collections(user)
  # binding.pry
  user.collections.all.each_with_index{|x,index|puts "#{index+1} - #{x.name}"}
end

def get_collection(user)
  user_input = nil
  # binding.pry
  until (0..list_collections(user).length) === user_input.to_i
    puts "Please choose a collection or type 0 to go back"
    list_collections(user)
    user_input = get_user_input
  end
  if user_input != "0"
    list_collections(user)[(user_input.to_i) -1]
  end
end

def menu_1(user)
  loop do
  prints_menu(Menu_1)
  response = get_user_input
  case response
    when "1"
      menu_2(user)
        prints_menu(Menu_1)
    when "2"
      pieces = get_pieces
      pieces[:results].each{|piece| piece.print}
      puts "Here is the next page url #{pieces[:next]}"
    when "3"
      break
    end
  end
end

def menu_2(user)
  list_collections(user)
  prints_menu(Menu_2)
  user_input = get_user_input
  if user_input == "1"
    menu_3(user,get_collection(user))
  end
end

def menu_3(user,collection)
  prints_menu(Menu_3)
  user_input = get_user_input
  if user_input == "1"
    pieces = collection.pieces.all.each_with_index {|piece,index| puts "#{index + 1} - #{piece.name}"}
    piece_input = get_user_input("Choose the Piece to see more options or type 0 to go back")
    until (0...pieces.count) === piece_input.to_i
      piece_input = get_user_input("Choose the Piece to see more options or type 0 to go back")
    end
    if piece_input != 0
      piece_menu(collection.pieces.all[(piece_input.to_i) -1])

    end

  elsif user_input == "2"
    search_for_pieces
  end
end

def search_by_artists
  input = get_user_input("Please enter the name ot the artist")
  # Api call
end

def search_by_genes
  input = get_user_input("Please enter the name of the gene")
  # Api call
end

def piece_menu(piece)
  piece.print
  puts piece
  prints_menu(["Remove Item from Collection","Go Back"])
  user_input = get_user_input
  if user_input == '1'
    confirm = get_user_input("Are you sure you want to remove the item from your collection? Yes/No")
    if confirm == "Yes"
        Collection.find_by(id: piece.collection_id).pieces.delete(piece)
        puts "The #{piece.name}, has been removed from your collection"
      end
  end

end



def exit
  puts "Thank you visiting us!!!"
end

# binding.pry
