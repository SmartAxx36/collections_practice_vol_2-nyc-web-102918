def begins_with_r(array)
  array.all? do |str|
    str.start_with?("r")
  end
end
def contain_a(array)
  array.select do |str|
    str.include?("a")
  end
end
def first_wa(array)
  array.select {|str|
      str = str.to_s
    str.start_with?("wa")
  }.first
end
def remove_non_strings(array)
  array.each do |str|
    array.pop
    if str.class != String
      array.delete(str)
    end
  end
end
def count_elements(array)
  count = Hash.new(0)
  array.each do |x|
      count[x] += 1
    end
    new_array = []
  count.each do |object, num|
    object.each do |x, y|
     new_array << {x => y, :count => num}
    end
  end
return new_array
end

def merge_data(keys, data)
keys.each do |hash|
  specs = hash[:first_name]
  puts hash
  object = data[0][specs]

  object.each do |key,value|
    hash[key] = value
  end
end
end
def find_cool(array)
  cool_array = []
  array.each do |hash|
    hash.each do |key, value|
      cool_array << hash if key == :temperature && value == "cool"
    end
  end
  return cool_array
end
def organize_schools(hash)
  places = {}
  hash.values.each do |location|
    places[location.values[0]] = []
  end
  hash.each do |school, location|
    places[location.values[0]] << school
  end
  places
end
# your code goes here
