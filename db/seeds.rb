# Song.delete_all
# Genre.delete_all
# Artist.delete_all
#
# hotline_bling = Song.create(:name=>'Hotline Bling')
# thriller = Song.create(:name=>'Thriller')
#
# drake = Artist.create(:name=>'Drake')
# mj = Artist.create(:name=>'Michael Jackson')
#
# rap = Genre.create(:name=>'Rap')
# pop = Genre.create(:name=>'Pop')
#
# hotline_bling.artist = drake
# thriller.artist = mj
#
# drake.songs << hotline_bling
# mj.songs << thriller
#
# pop.songs << thriller
# rap.songs << hotline_bling
User.delete_all
Collection.delete_all
Piece.delete_all
Gene.delete_all

# seed users
# seed collections

candle = Piece.create(:name => "Candle", :url => nil, :img_url=>nil, :artist_name=>"John" :gene_id=>nil, :collection_id=>nil)
potato = Piece.create(:name => "Potato", :url => nil, :img_url=>nil, :artist_name=>"Billy" :gene_id=>nil, :collection_id=>nil)
tomato = Piece.create(:name => "Tomato", :url => nil, :img_url=>nil, :artist_name=>"Hean" :gene_id=>nil, :collection_id=>nil)
baker = Piece.create(:name => "Baker", :url => nil, :img_url=>nil, :artist_name=>"Drake" :gene_id=>nil, :collection_id=>nil)
butcher = Piece.create(:name => "Butcher", :url => nil, :img_url=>nil, :artist_name=>"Ringo" :gene_id=>nil, :collection_id=>nil)

modern = Gene.create(:name=>"Modern")
classical = Gene.create(:name=>"Classical")
futuristic = Gene.create(:name=>"Futuristic")
