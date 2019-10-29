# frozen_string_literal: true

Characterepisode.destroy_all
Character.destroy_all
Episode.destroy_all
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

characters1 = JSON.parse(open('https://rickandmortyapi.com/api/character').read)
characters2 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=2').read)
characters3 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=3').read)
characters4 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=4').read)
characters5 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=5').read)
characters6 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=6').read)
characters7 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=7').read)
characters8 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=8').read)
characters9 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=9').read)
characters10 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=10').read)
characters11 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=11').read)
characters12 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=12').read)
characters13 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=13').read)
characters14 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=14').read)
characters15 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=15').read)
characters16 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=16').read)
characters17 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=17').read)
characters18 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=18').read)
characters19 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=19').read)
characters20 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=20').read)
characters21 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=21').read)
characters22 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=22').read)
characters23 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=23').read)
characters24 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=24').read)
characters25 = JSON.parse(open('https://rickandmortyapi.com/api/character?page=25').read)
# episodes = JSON.parse(open('https://rickandmortyapi.com/api/episode').read)

characters = [characters1, characters2, characters3, characters4, characters5,
              characters6, characters7, characters8, characters9, characters10,
              characters11, characters12, characters13, characters14,
              characters15, characters16, characters17, characters18,
              characters19, characters20, characters21, characters22,
              characters23, characters24, characters25]

characters.each do |characterpages|
  character_info = characterpages['results']

  character_info.each do |character|
    episodes_info = character['episode']

    # creates new character
    new_character = Character.create(
      name: character['name'],
      status: character['status'],
      species: character['species'],
      origin: character['origin']['name'],
      image: character['image']
    )

    episodes_info.each do |episode|
      episode = JSON.parse(open(episode).read)
      episode_info = episode['results']

      new_character.characterepisodes.find_or_create_by(
        name: episode_info['name'],
        air_date: episode_info['air_date'],
        episode_name: episode_info['episode']
      )
    end

    new_character.create_favourite_food(
      name: "#{Faker::Science.element} #{Faker::Food.dish}",
      description: Faker::Food.description
    )
  end
end

puts "Generated #{Character.count} characters"
puts "Generated #{FavouriteFood.count} favourite foods"
puts "Generated #{Episode.count} episodes"
