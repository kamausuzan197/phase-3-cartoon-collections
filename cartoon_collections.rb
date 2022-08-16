require 'pry'

def roll_call_dwarves(array)
  roll_call = array.map.with_index do |d, index|
    number = index + 1
    "#{number}. #{d}"
  end
  puts roll_call
end

def summon_captain_planet(array)
  array.map do |p|
    p[0] = p[0].upcase
    p + '!'
  end
end

def long_planeteer_calls(array)
  array.each do |x|
    length = x.split('').length
    if length > 4
      return true
    end
  end
  return false
end

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]
  array.each do |x|
    if cheese_types.include?(x)
      return x
    end
  end
  return nil
end

roll_call_dwarves(["Doc", "Dopey", "Bashful", "Grumpy"])
puts summon_captain_planet(["earth", "wind", "fire", "water", "heart"])

short_words = ["puff", "go", "two"]
long_planeteer_calls(short_words)

assorted_words = ["two", "go", "industrious", "bop"]
long_planeteer_calls(assorted_words)

snacks = ["crackers", "gouda", "thyme"]
puts find_the_cheese(snacks)

soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
puts find_the_cheese(soup)