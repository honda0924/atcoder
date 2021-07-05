a,b = gets.split.map(&:to_i)
puts a <= b && 6 * a >= b ? 'Yes' : 'No'   