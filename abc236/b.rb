n = gets.chomp.to_i

array = gets.split.map(&:to_i)

sum = 2 * n * (n+1)

puts sum - array.sum