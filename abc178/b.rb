array=gets.split.map(&:to_i)
ans_array=[array[0]*array[2],array[1]*array[2],array[0]*array[3],array[1]*array[3]]
puts ans_array.max