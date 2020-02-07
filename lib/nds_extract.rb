$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_index = 0
  while gross_index < director_data[director_index][:movies].size do
    gross = 0
    gross += director_data[director_index][:movies][gross_index][:worldwide_gross]
    gross_index += 1
    end
  return gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
		while director_index < nds.size do
      result.store(nds[director_index][:name], gross_for_director)
			director_index += 1
		end
		return result
  nil
end
