n=gets.chomp.to_i
ans=2
(2..n).each do |i|
  ans=ans.lcm(i)
end
puts ans+1
