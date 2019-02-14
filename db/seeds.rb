# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


require 'net/http'
require 'uri'
require 'json'

#
def getJoke
  uri = URI.parse("https://icanhazdadjoke.com/")
    request = Net::HTTP::Get.new(uri)
    request["Accept"] = "application/json"

    req_options = {
     use_ssl: uri.scheme == "https",
    }

  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
     http.request(request)
  end
  JSON.parse(response.body)
end

# response.code
# puts response.body
###########################################
# we want to generate a random dad joke for each quote content
######### response.body.joke
#############################################


Quote.create(author: "Dad", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Pops", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Daddy", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Father", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Appa", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Bo", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Coach", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Old Man", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Pa", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Padre", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Poppa Roach", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Big Papa", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Papa", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Daddio", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Dada", content: getJoke[getJoke.keys[1]])
Quote.create(author: "Pop", content: getJoke[getJoke.keys[1]])
#
# puts q2.content
# puts q3.content
# puts q4.content


puts "quotes seeded"
#
# User.create(name: "Rachel", email: "rachel@gmail.com")
# User.create(name: "Meghan", email: "meghan@gmail.com")
#
# puts "users seeded"
#
Game.create(name: "1", quote_id: 1, imageURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwl37mISBGZ5Mg6Rh4akCqBgWQTeOf8tvqiQbKKrNBXUJGh3b")
Game.create(name: "2", quote_id: 2, imageURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTELMqRLf3M59Vo0dbVARiyZ-58BxwTfojSIxMl0kGoTNj05AFjg")
Game.create(name: "3", quote_id: 3, imageURL:"http://www.journeysaremydiary.com/wp-content/uploads/2015/06/ModernFamily.jpg")
Game.create(name: "4", quote_id: 4, imageURL:"http://images5.fanpop.com/image/photos/31300000/Tim-The-Tool-Man-Taylor-tim-allen-31354266-470-476.jpg")
Game.create(name: "5", quote_id: 5, imageURL:"https://i.pinimg.com/originals/d8/10/5c/d8105c8e7e8ed19df6b8e450dcec67cf.jpg")
Game.create(name: "6", quote_id: 6, imageURL:"https://www.lifewire.com/thmb/vDB3ply4rHJG_BDWeD0AbuRu-EU=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simpsons_09_Homer_V2F_hires1-56e1eccc5f9b5854a9f89a63.jpg")
Game.create(name: "7", quote_id: 7, imageURL:"https://www.writeups.org/wp-content/uploads/Bryan-Mills-Taken-movie-Liam-Neeson.jpg")
Game.create(name: "8", quote_id: 8, imageURL:"https://m.media-amazon.com/images/M/MV5BMTExNzU0MTM0OTBeQTJeQWpwZ15BbWU4MDUyOTQwODEx._V1_SY1000_CR0,0,763,1000_AL_.jpg")
Game.create(name: "9", quote_id: 9, imageURL:"https://peopledotcom.files.wordpress.com/2017/08/gettyimages-839971312.jpg?w=768")
Game.create(name: "10", quote_id: 10, imageURL:"https://hesselgroup.com.au/app/uploads/2018/03/Working-Dad-2-823x1024.jpg")
Game.create(name: "11", quote_id: 11, imageURL:"https://nick-intl.mtvnimages.com/uri/mgid:file:docroot:nick.com:/nick-assets/shows/images/jimmy-neutron/characters/character_large_332x363_hugh.jpg?quality=0.75&height=0&width=480&matte=true&crop=false")
Game.create(name: "12", quote_id: 12, imageURL:"https://cdna.artstation.com/p/assets/images/images/000/990/038/large/rodney-amirebrahimi-bb10.jpg?1437660323")
Game.create(name: "13", quote_id: 13, imageURL:"https://vignette.wikia.nocookie.net/fnl/images/e/ef/Erictaylor.jpg/revision/latest/scale-to-width-down/310?cb=20180516164004")
Game.create(name: "14", quote_id: 14, imageURL:"https://img.thedailybeast.com/image/upload/d_placeholder_euli9k/dpr_2.0/c_limit,w_585/fl_lossy,q_auto/v1/galleries/2012/10/31/sandra-berhnardt-sandy-from-grease-and-other-sandy-s-we-actually-like/sandys-like-gallagher_cnmfnh")
Game.create(name: "15", quote_id: 15, imageURL:"https://c.o0bg.com/rf/image_371w/Boston/2011-2020/2014/01/01/BostonGlobe.com/National/Images/ab7699f6ecd5443a99b87a30921ee132-ab7699f6ecd5443a99b87a30921ee132-0.jpg")
Game.create(name: "16", quote_id: 16, imageURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3HEfO8prvI4HHCZ2FN4YgOx6Ml7hJ6YmmCwz4rMscuQo6gTXeyQ")

puts "games seeded"
