# frozen_string_literal: true

Character.destroy_all
Episode.destroy_all
Characterepisode.destroy_all
FavouriteFood.destroy_all

# create charachter
# within character create: create favourite foods
# create episode
# created all links of characterepisodes with link of characters api episodes list

# or create episodes on the fly through charachters episodes list
# if(created) ? skip it : create

# testing git setup

require 'open-uri'
require 'json'
require 'net/http'

characters = JSON.parse(open('https://rickandmortyapi.com/api/character/').read)
episodes = JSON.parse(open('https://rickandmortyapi.com/api/episode/').read)

characters['results'].each do |character|
  new_character = Character.create(
    name: character['name'],
    status: character['status'],
    species: character['species'],
    origin: character['origin']['name'],
    image: character['image']
  )
  new_character.favouriteFood.create(
    name: "#{Faker::Science.element} #{Faker::Food.dish}",
    description: Faker::Food.description
  )
end

puts "Generated #{Character.count} characters"
puts "Generated #{FavouriteFood.count} characters"
puts "Generated #{Episode.count} characters"
