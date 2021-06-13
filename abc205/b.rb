n = gets.chomp.to_i
array = gets.split.map(&:to_i)
puts array.uniq.length == n ? 'Yes' : 'No'