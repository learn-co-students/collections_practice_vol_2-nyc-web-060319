require "pry"
# your code goes here
def begins_with_r(argument_array)
  argument_array.all?{|arg| arg[0] == "r"}
end

def contain_a(collection)
  collection.select{ |item| item.chars.any?("a") }
end

def first_wa(collection)
  (collection.select{ |item| ( item.class == String ) && ( item.start_with?("wa") ) })[0]
end

def remove_non_strings(collection)
  collection.select{ |item| item.class == String }
end

def count_elements(array)
  return_array = []
  #binding.pry
  array.each do |name|
    found_index = return_array.find_index{|entry| entry[:name] == name[:name]}
    if found_index != nil
      return_array[found_index][:count] += 1
    else
      return_array << {:name => name[:name], :count => 1}
    end
  end
  return_array
end

#count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

def find_name_in_data_array(data, name)
  index = data.find_index{ |entry| binding.pry && entry.has_key?(name) }
  data[index]
end

def merge_data(keys_array, data)
  data = data[0]
  keys_array.each do |key|
    #entry = find_name_in_data_array(data, key[:first_name])
    #binding.pry
    key[:awesomeness] = data[key[:first_name]][:awesomeness]
    key[:height] = data[key[:first_name]][:height]
    key[:last_name] = data[key[:first_name]][:last_name]
  end
  keys_array
end

def find_cool(cool_people_hashes_array)
  cool_people = []
  cool_people_hashes_array.each do |person|
    if person[:temperature] == "cool"
      cool_people << person
    end
  end
  cool_people
end

def organize_schools(schools)
  organized = {}
  schools.each do |key, value|
    if organized.has_key?(value[:location])
      organized[value[:location]] << key
    else
      organized[value[:location]] = [key]
    end
  end
  organized
end

