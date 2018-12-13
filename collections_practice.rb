require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  hash = Hash.new 0
  new_array = []

  array.each do |elements|
    elements.each do |key, value|
      hash[value] += 1
    end
  end

  i = 0

  while i < hash.length
    new_array.push(:count => hash.values[i], :name => hash.keys[i])
    i += 1
  end

  return new_array

end

def merge_data(keys, data)

  merged_array = []
  merged_hash = {}

  keys.each do |elements|
    name_key = elements[:first_name]

    data.each do |hash|
      hash.each do |key, value|
        if key == name_key
          merged_hash = {elements.key(name_key) => name_key}
          merged_array.push(merged_hash.merge(value))
          merged_array.push(:motto => elements[:motto])
        end
      end
    end
  end

return merged_array

end

def find_cool(array)
  temperature = ""
  new_array = []
  
  array.each do |hash|
    termperature = hash[:temperature]
    if temperature == "cool"
      new_array.push(:name => hash[:name], :temperature => hash[:temperature])
    end
  end

  return new_array
end


def organize_schools(schools)
end
