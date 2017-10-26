require_relative '../config/environment.rb'
require_relative 'api_communicator.rb'

 def welcome
   puts "Welcome Art Fan!"
   divisor
   puts ""
   puts ""
 end

def get_user
   input= get_user_input("Please enter your name to log in")
   User.find_or_create_by(name: input)
 end

 def get_user_input(message="Please make your selection",echo = true)
   puts message
  echo == true ? input = gets.chomp : STDIN.noecho(&:gets).chomp
 end

def prints_menu(array)
  divisor
  puts ""
  puts ""
  puts "Please make your selection"
  array.each_with_index {|memo,index| puts "#{index + 1} - #{memo}"}
  divisor
  puts ""
  puts ""
end

def prints_menu_horizontal(array)
  divisor
  menu = []
  array.each_with_index {|memo,index| menu << "#{index + 1} - #{memo}"}
  puts menu.join('          ')
  divisor
end

def create_collection(user)
  user.create_collection
end


def list_collections(user)
  clear_terminal
  user.collections.each_with_index{|x,index| puts "#{index +1} - #{x.name}"}
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

def print_piece(count=0)
  pieces = get_pieces
  pieces[:pieces].each do |piece|
    binding.pry
    piece.print
    prints_menu_horizontal(["Back","Next","Save","Exit"])
    count += 1
  end
end

def menu_1(user)
  loop do
  prints_menu(Menu_1)
  response = get_user_input
  case response
    when "1"
      menu_2(user)
    when "2"
      print_piece
      case response
        when "1"
          print_piece(count-1)
        when user_input = "2"
          price_piece(count+1)
        when user_input = "3"
          puts "Saved To Your Collection"
          collectionpiece = New CollectionPiece(collection_id: user.collection.id, piece_id: pieces[piece].id)
          genes = []
          pieces[:genes].map do |gene_string|
            Gene.new(gene_string.name)
            genes<<self
          end
          genes.each do |gene_instance|
            piece<<gene_instance
          end
          print_piece(count+1)
        when "4"
          break
        end
      puts "Here is the next page url #{pieces[:next]}"
    end
  end
end


def menu_2(user)
  list_collections(user)
  prints_menu(Menu_2)
  user_input = get_user_input
  case user_input
  when "1"
    menu_3(user,get_collection(user))
  end
end

def menu_3(user,collection)
  prints_menu(Menu_3)
  case user_input = get_user_input
    when "1"
      pieces = collection.pieces.all.each_with_index {|piece,index| puts "#{index + 1} - #{piece.name}"}
      # binding.pry
      if pieces.empty?
        divisor
        puts ""
        puts ""
        puts "This collection is empty"
        puts ""
        puts ""
        divisor
      else
        piece_input = get_user_input("Choose the Piece to see more options or type any other key to go back")
      piece_menu(collection.pieces.all[(piece_input.to_i) -1],collection,user)
     end
    when "2"
      search_for_pieces(user,collection)
    end
end

def piece_menu(piece,collection,user)
  piece.print
  Piece.local_methods.each {|keys| puts  "#{keys}: #{piece[keys]}"}
  puts ""
  puts ""
  divisor
  # piece.genes.each {|gene| puts "#{gene.name}"} wait until gets genes
  puts ""
  puts ""
  prints_menu_horizontal(["Remove From Collection","Go Back"])
  case  user_input = get_user_input
    when "1"
        confirm = get_user_input("Are you sure you want to remove the item from your collection? Yes/No")
        if confirm == "Yes"
          binding.pry
          Collection.find_by(id: piece.collection_id).pieces.delete(piece)
          puts "The #{piece.name}, has been removed from your collection"
        end
  end

end



def exit
  puts "Thank you visiting us!!!"
end

def divisor
  puts "==========================================================="
end

def clear_terminal
  Gem.win_platform? ? (system "cls") : (system "clear")
end
def search_for_pieces(user,collection)
  # collection.find_by()
  binding.pry
  collection.pieces.find_by(id: 1)
end

def prints_menu_horizontal(array)
  divisor
  menu = []
  array.each_with_index {|memo,index| menu << "#{index + 1} - #{memo}"}
  puts menu.join("          ")
  divisor
end

def rename_collection(user,collection)
  binding.pry
end

# binding.pry
def divisor
  puts "==========================================================="
end
