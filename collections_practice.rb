require 'pry'

def begins_with_r (tools)
 for tool in tools
  if tool[0] != 'r'
    return false
  end
 end
 return true
end

def contain_a(tools)
  tools.select do |tool|
    tool.include?('a')
  end
end

def first_wa(tools)
  tools.each do |tool|
    if tool[0,2] == 'wa'
      return tool
    end
  end
end

def remove_non_strings(tools)
  tools.select do |tool|
    tool.class == String
  end
end

def first_keys(hash_array)
  hash_array.map do |hash|
    hash[0]
  end
end


def count_elements(tools)
 toRet = []
 traversed = []
 tools.each do |tool|
   if !traversed.include?(tool) 
     toRet.push({count: tools.count(tool), tool.keys[0] => tool.values[0]})
     traversed.push(tool)
   end
 end
return toRet
end



def merge_data(keys, data)
  for i in 0...keys.length
    data[0][keys[i][:first_name]].each do |key, value|
      keys[i][key] = value
    end
  end
  return keys
end

def find_cool(cool)
  cool.select do |dict|
    dict[:temperature] == "cool"
  end
end

def organize_schools(schools)
  retDict = {}
  schools.each do |school, locDict|
    if retDict.keys.include?(locDict[:location])
      retDict[locDict[:location]] << school
    else
      retDict[locDict[:location]] = [school]
    end
  end
  return retDict
end
    
