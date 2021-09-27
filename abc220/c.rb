n=gets.chomp.to_i
array=gets.split.map(&:to_i)
x=gets.chomp.to_i
ans=0
sum_a=array.sum
ans += x/sum_a*array.length
tmp=x/sum_a*sum_a
array.each do |a|
  ans += 1
  tmp += a
  if tmp > x
    break
  end
end

puts ans
