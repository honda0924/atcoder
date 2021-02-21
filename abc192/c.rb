n,k = gets.split.map(&:to_i)
(1..k).each do |i|
  num_array = n.to_s.split("")
  g1 = num_array.sort.reverse.join.to_i
  g2 = num_array.sort.join.to_i
  n=g1-g2
end

puts n