n = gets.chomp.to_i
array=gets.split.map(&:to_i).sort!
ans = 1
tmp = 0
array.each do |i|
  ans *= (i-tmp+1)
  ans = ans % 1000000007
  tmp = i
end
puts ans