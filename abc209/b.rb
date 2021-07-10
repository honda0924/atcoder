n,x=gets.split.map(&:to_i)
array=gets.split.map(&:to_i)
puts array.sum - (array.length/2) - x <= 0 ? 'Yes' : 'No' 