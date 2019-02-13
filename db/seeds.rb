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
Game.create(name: "3", quote_id: 3, imageURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6YPUA7-9OV2FY16SZeu_8lMFtFmtlDnER6R6RVuv_ol0CBNbK")
Game.create(name: "4", quote_id: 4, imageURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFiGZGiJXIYLHnSGj7lobfq9tOZZW-WVBvjJL6YIaI67eoR-Qp")
Game.create(name: "5", quote_id: 5, imageURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSls2vybepKmxrVaiYa2KRKlcxyc0jn_kqUjgZRxKugV40X87co")
Game.create(name: "6", quote_id: 6, imageURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9CWz7h1hMgjxBSulMvH9TqoPV4xxgDT6aagT3lYueetu_zLeeXA")
Game.create(name: "7", quote_id: 7, imageURL:"http://www2.pictures.zimbio.com/mp/Rio8ZvEcVxNx.jpg")
Game.create(name: "8", quote_id: 8, imageURL:"https://images.mentalfloss.com/sites/default/files/styles/mf_image_16x9/public/doubtfire_hed.jpg?itok=Hn8Ikf1l&resize=1100x1100")
Game.create(name: "9", quote_id: 9, imageURL:"http://www.wetpaint.com/wp-content/uploads/2017/03/imageedit_8_8854664694-640x480-1490820445.png")
Game.create(name: "10", quote_id: 10, imageURL:"https://hesselgroup.com.au/app/uploads/2018/03/Working-Dad-2-823x1024.jpg")
Game.create(name: "11", quote_id: 11, imageURL:"https://alexraphael.files.wordpress.com/2014/01/fresh-prince.jpeg")
Game.create(name: "12", quote_id: 12, imageURL:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/walter-white-breaking-bad-1528305352.jpg?crop=1xw:0.8888888888888888xh;center,top&resize=980:*")

puts "games seeded"
