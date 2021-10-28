# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts "Destroying Data"
Movie.destroy_all

puts "Filling DB with Movies"

url = 'http://tmdb.lewagon.com/movie/top_rated'
movies = URI.open(url).read
movie = JSON.parse(movies)

movie['results'].each do |film_each|
  film = Movie.new(
    title: film_each['title'],
    overview: film_each['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500/#{film_each['poster_path']}",
    rating: film_each['vote_average'].to_f
  )
  film.save
  puts "#{film_each['title']} has been added to the DB"
end
