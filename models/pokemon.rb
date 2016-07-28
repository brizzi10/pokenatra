# require 'pry'

class Pokemon < ActiveRecord::Base
  # before_create :add_url
  # AR classes are singular and capitalized by convention
  belongs_to :trainer
  # private
  # def add_url
  #   # puts "*" * 50
  #   # puts "*" * 50
  #   # puts "*" * 50
  #   # puts "*" * 50
  #   # puts "*" * 50
  #   # pokemon_name = self.name.downcase
  #   # pokemon_url = "https://img.pokemondb.net/artwork/#{pokemon_name}.jpg"
  #   # self.img_url = pokemon_url
  #   # binding.pry
  # end
end
