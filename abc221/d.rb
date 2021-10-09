n = gets.chomp.to_i

n.times do
  a,b = gets.split.map(&:to_i)
  array[a] += 1
  array[a+b] -= 1
end
k=0
array.each do |i|
  k += i
  puts k
  ans[k-1] += 1
end
puts ans.join(' ')