# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "games", force: :cascade do |t|
#   t.string "name"
#   t.integer "score"
#   t.integer "user_id"
#   t.integer "quote_id"
#   t.boolean "completed", default: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false


Quote.create(content: "Better to remain silent and be thought a fool than to speak out and remove all doubt.", author:"Abraham Lincoln")
Quote.create(content: "The difference between stupidity and genius is that genius has its limits.", author: "Albert Einstein")
Quote.create(content: "The average dog is a nicer person than the average person.", author: "Andy Rooney")
Quote.create(content: "At every party there are two kinds of people – those who want to go home and those who don’t. The trouble is, they are usually married to each other.", author: "Ann Landers")
Quote.create(content: "I always arrive late at the office, but I make up for it by leaving early.", author: "Charles Lamb")

puts "quotes seeded"

User.create(name: "Rachel", email: "rachel@gmail.com")
User.create(name: "Meghan", email: "meghan@gmail.com")

puts "users seeded"

Game.create(name: "First Game", user_id: 1, quote_id: 1)
Game.create(name: "Second Game", user_id: 1, quote_id: 2)
Game.create(name: "Third Game", user_id: 1, quote_id: 3)
Game.create(name: "Fourth Game", user_id: 2, quote_id: 4)
Game.create(name: "Fifth Game", user_id: 2, quote_id: 5)

puts "games seeded"
