require "pry"
def begins_with_r(tools)
tools.all? do |tool|
tool.downcase.chr == "r"
 end
end

def contain_a(array)
  array.select do |word|
      word.downcase.include?("a")
  end
end

def first_wa(array)
    array.detect do |word|
    word[0,2] == "wa"
  end
  #return word
end

def remove_non_strings(array)
  #if array.is_a?(String)
  array.delete_if do |string|
  string.is_a?(String) == false
  end
end

def count_elements(array)
  #new_array = []
   array.each do |item|
    item[:count] = 0
    name = item[:name]
    array.each do |data|
      if data[:name] == name
        item[:count] += 1
      end
    end
  end
    return array.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |key_hash|
    data.each do |data_hash|
      data_hash.each do |name, info|
        if key_hash.values[0] == name
          array << key_hash.merge(info)
        end
      end
    end
  end
  array
end

def find_cool(array)
  cool_stuff = []
  array.each do |hash|
    hash.each do |key, value|
      if (key == :temperature && value == "cool")
        cool_stuff << hash
      end
    end
  end
  cool_stuff
end

def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end 
