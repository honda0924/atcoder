n=gets.chomp.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
sum=0
(1..n).each do |i|
  sum += a[i-1]*b[i-1]
end
puts sum==0 ? 'Yes' : 'No'
