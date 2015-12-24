def duplicate_counter(array)
  element_count = count_elements(array)
  num_duplicates = 0
  element_count.values.each do |count|
    num_duplicates += (count - 1)
  end
  num_duplicates
end

def count_elements(array)
  element_count = {}
  array.each do |element|
    key = "#{element}#{element.class}"
    if element_count[key]
      element_count[key] += 1
    else
      element_count[key] = 1
    end
  end
  element_count
end
