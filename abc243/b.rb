n=gets.chomp.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)

ans1 = 0
ans2 = 0
(0..n-1).each do |i|
  ans1 += 1 if a[i]==b[i]
  ans2 += 1 if (a.include?(b[i]) && a[i]!=b[i]) 
end
puts ans1
puts ans2

