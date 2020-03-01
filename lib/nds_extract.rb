$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  pp nds
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = Hash.new
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  name_index = 0

  while name_index < directors_database.length do
    gross_index = 0
    gross_amount = 0
    director_name = directors_database[name_index][:name]

    while gross_index < directors_database[name_index][:movies].length do
      current_amount = directors_totals[name_index][:movies][gross_index][:worldwide_gross]
      gross_amount += current_amount
      gross_index += 1
    end
    result[director_name] = gross_amount
    name_index += 1
  end
  return result
end
