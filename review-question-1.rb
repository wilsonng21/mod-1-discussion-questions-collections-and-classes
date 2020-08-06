## QUESTION 1
# require 'pry'

pokemons = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

# binding.pry

# How would you get the url for Bulbasaur's ability?
pokemons.first[:abilities].last[:ability][:url]

# How would you return the first pokemon with base experience over 40?
result = pokemons.find do |pokemon|
    pokemon[:base_experience] > 40
end

# p result

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
result = pokemons.find_all do |pokemon|
    pokemon[:base_experience] > 40
end

# pp result
# How would you return an array of all of the pokemon's names?
result = pokemons.map do |pokemon|
    pokemon[:name]
end

# p result

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
pokemons.each do |pokemon|
    p pokemon[:weight] > 60 ? true : false
end

# whatever method you use should return true if there are any such pokemon, false if not.
