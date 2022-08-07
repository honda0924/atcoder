array=gets.split.map(&:to_i)
puts array.uniq.length === 2 && (array.count(array[0]) === 2 || array.count(array[0]) === 3) ? 'Yes' : 'No'