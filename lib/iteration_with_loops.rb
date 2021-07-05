def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_index = 0
  min_array = []
  while row_index < src.size
    inner_index = 0
    min = src[row_index][inner_index]
    while inner_index < src[row_index].size
      if src[row_index][inner_index] < min
        min = src[row_index][inner_index]
      end
      inner_index += 1
    end
    min_array << min
    row_index += 1
  end
  min_array
end