n,x=gets.split.map(&:to_i)
sum=0
(1..n).each do |i|
  v,p=gets.split.map(&:to_i)
  sum += v*p
  if sum > x * 100
    puts i
    exit
  end
end
puts -1