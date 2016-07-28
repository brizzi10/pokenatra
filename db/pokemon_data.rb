def get_pokemon_data
  pokemon_data = {
    "ben"=>[
      {:name=>"Bulbasaur", :cp=>rand(800), :poke_type=>"Grass/Poison", :img_url=>"https://img.pokemondb.net/artwork/bulbasaur.jpg"},
      {:name=>"Charmander", :cp=>rand(800), :poke_type=>"Fire", :img_url=>"https://img.pokemondb.net/artwork/charmander.jpg"},
      {:name=>"Squirtle", :cp=>rand(800), :poke_type=>"Water", :img_url=>"https://img.pokemondb.net/artwork/squirtle.jpg"}
    ]
  }

  return pokemon_data
end
