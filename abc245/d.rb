n,m = gets.split.map(&:to_i)
a_array = gets.split.map(&:to_i)
c_array = gets.split.map(&:to_i)
b_array = []
(m+1).times do |j|
  quotient = c_array[0] / a_array[0]
  b_array << quotient
  (0..n).each do |i|
    c_array[i] -= a_array[i] * quotient
  end
  c_array.shift()
end
puts b_array.join(' ')