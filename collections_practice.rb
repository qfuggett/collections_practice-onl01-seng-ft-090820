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

def swap_elements(swap)
  swap.sort do |a, b|
    temp = a
    a = b
    b = temp
    swapped = a, b
  end
  return swapped
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
    string.start_with?("a")       #returns true for elements passed starting with a
  end
end

def sum_array(numbers)
  numbers.inject do |numbers, x|      #passes each element and accumulates sequentially
    numbers + x                     
  end
end

def add_s(words)
  words.delete_at(words.index 2)
  words.each do |element|
    element << "s"
  end
end