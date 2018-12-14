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
  m_hash_1 = {}
  m_hash_2 = {}

  keys.each do |elements|
    name_key = elements[:first_name]
    motto = elements[:motto]

    data.each do |hash|
      hash.each do |key, value|
        if key == name_key
          m_hash_1 = {elements.key(name_key) => name_key}
          m_hash_1[elements.key(motto)] = motto
          merged_array.push(m_hash_1.merge(value))
        end
      end
    end
  end

return merged_array

end

def find_cool(array)
  temperature = ""
  new_array = []

  array.each do |data|
    temperature = data[:temperature]
    if temperature == "cool"
      new_array.push(:name => data[:name], :temperature => data[:temperature])
    end
  end

  return new_array
end


def organize_schools(schools)

cities = []
unique_cities = []
school_array = []
city_hash = {}

  schools.each do |school, location|
    location.each do |key, value|
      cities.push(value)
    end
  end

  unique_cities = cities.uniq

  unique_cities.each do |city|
    schools.each do |school, location|
      location.each do |key, value|
        if value == city
          school_array.push(school)
        end
      end
    end
    city_hash[city] = school_array
    school_array = []
  end

  return city_hash

end
