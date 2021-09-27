k=gets.chomp.to_i
a,b = gets.chomp.split(' ')
a_array=a.split('').map(&:to_i).reverse
b_array=b.split('').map(&:to_i).reverse
decimal_a=0
(0..(a_array.length-1)).each do |i|
  decimal_a = decimal_a + a_array[i]*(k**i)
end
decimal_b=0
(0..b_array.length-1).each do |i|
  decimal_b = decimal_b + b_array[i]*(k**i)
end
puts decimal_a*decimal_b