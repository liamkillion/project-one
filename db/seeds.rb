require 'pry'
User.delete_all
Collection.delete_all
Piece.delete_all
Gene.delete_all

# seed users
user = User.create(:name => "Abraham Rudy")
user1 = User.create(:name => "Alona Yeheskel")
user2 = User.create(:name => "Brandon Harris")
user3 = User.create(:name => "Brian Boisvert")
user4 = User.create(:name => "Cory Baker")
user5 = User.create(:name => "Dakota Lillie")
user6= User.create(:name => "Dick Ward")
user7 = User.create(:name=> "Diego Flores")
user8 = User.create(:name=> "Elisa Vaccaro")
user9 = User.create(:name => "Fabiano Cunha")
user10 = User.create(:name => "Genevieve Costa")
user11 = User.create(:name => "James Graham")
user12 = User.create(:name => "Jordan Storms")
user13 = User.create(:name => "Liam Killion")
user14 = User.create(:name => "Lina Rudashevski")
user15 = User.create(:name => "Matteo Bruni")
user16 = User.create(:name => "Mehreen Rahman")
user17=  User.create(:name => "Ryan Mascolo")
user18 = User.create(:name=> "Shirley Lin")
user19 = User.create(:name=> "Tadeh Ohanian")
user20 = User.create(:name => "Winter LaMon")
user21 = User.create(:name => "Yassi Mortensen")
#Collection Seeds
collection = user.collections.create(:name => "Collection 1")
collection1 = user.collections.create(:name => "Collection 2")
collection2 = user1.collections.create(:name => "My favorite collection")
collection3 = user2.collections.create(:name => "My favs")
collection4 = user3.collections.create(:name => "My favorites")
# collection5 = Collection.new (:name => "Fabulous Collection", :user_id => 66)
# collection6 = Collection.new (:name => "Fabulous Collection 2", :user_id => 21)


# seed collections
candle = Piece.create(:name => "Candle", :url => nil, :img_url=>nil, :artist_name=>"John" ,:gene_id=>nil, :collection_id=>nil)
candle.img_url ='https://d32dm0rphc51dk.cloudfront.net/BNqPRA9serVa2mFO2ToL5A/big_and_tall.jpg'
candle.save
potato = Piece.create(:name => "Potato", :url => nil, :img_url=>nil, :artist_name=>"Billy", :gene_id=>nil, :collection_id=>nil)
potato.img_url ='https://d32dm0rphc51dk.cloudfront.net/BNqPRA9serVa2mFO2ToL5A/big_and_tall.jpg'
potato.save
tomato = Piece.create(:name => "Tomato", :url => nil, :img_url=>nil, :artist_name=>"Hean" ,:gene_id=>nil, :collection_id=>nil)
tomato.img_url ='https://d32dm0rphc51dk.cloudfront.net/BNqPRA9serVa2mFO2ToL5A/big_and_tall.jpg'
tomato.save
baker = Piece.create(:name => "Baker", :url => nil, :img_url=>nil, :artist_name=>"Drake" ,:gene_id=>nil, :collection_id=>nil)
baker.img_url ='https://d32dm0rphc51dk.cloudfront.net/BNqPRA9serVa2mFO2ToL5A/big_and_tall.jpg'
bake.save
butcher = Piece.create(:name => "Butcher", :url => nil, :img_url=>nil, :artist_name=>"Ringo", :gene_id=>nil, :collection_id=>nil)
butcher.img_url ='https://d32dm0rphc51dk.cloudfront.net/BNqPRA9serVa2mFO2ToL5A/big_and_tall.jpg'
butcher.save

# binding.pry
