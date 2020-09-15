def sort_array_asc(numbers)
  numbers.sort!
end

def sort_array_desc(numbers)
  numbers.sort.reverse
end

def sort_array_char_count(strings)
  strings.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(swap)  #shift out 1st element, swap 2 elements, unshift back to front
  swap.swap(1,2)
end

def reverse_array(numbers)
  numbers.reverse
end

def kesha_maker(names)
  kesha_name = [ ]
  names.each do |individual_name|
    individual_name.slice!(2)
    kesha_name = individual_name.insert 2, "$"
  end
end

def find_a(words)
  words.select do |string|
    string.start_with?("a")       #returns true for elements passed starting with 'a'
  end
end

def sum_array(numbers)
  numbers.inject do |numbers, x|      #passes each element and accumulates sequentially (one top of one another)
    numbers + x                     
  end
end

def add_s(words)
  feet = words.delete_at(1)
  new_array = [ ]
  words.each do |element|
    insert_elements = element << "s"
    new_array << insert_elements
  end
  new_array.insert(1, feet)

end