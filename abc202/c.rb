n=gets.chomp.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
ans=0
b_counts=Array.new(n,0)
c_counts=Array.new(n,0)
c.each do |i|
  c_counts[i-1] += 1
end
puts c_counts
b.each do |j|
  b_counts[j-1] += c_counts[j-1]
end
puts b_counts
a.each do |k|
  ans += b_counts[k-1]
end
puts ans
