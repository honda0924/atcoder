array = gets.split.map(&:to_i).sort
puts array[2] - array[1] == array[1] - array[0] ? 'Yes'  : 'No'