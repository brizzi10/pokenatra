require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'
require_relative './pokemon_data'
require_relative './trainer_data'


Pokemon.destroy_all
Trainer.destroy_all


pokemon_data = get_pokemon_data()
trainer_data = get_trainer_data()


pokemon_data.each_pair do |trainer_name, pokemons|
  info = trainer_data[trainer_name]
  current_trainer = Trainer.create!({
    name:       info[:name],
    level:      info[:level],
    img_url:    info[:img_url]
  })
  pokemons.each do |pokemon|
    Pokemon.create!({
      name:       pokemon[:name],
      poke_type:  pokemon[:poke_type],
      cp:         pokemon[:cp],
      img_url:    pokemon[:img_url],
      trainer:    current_trainer
    })
  end
end
