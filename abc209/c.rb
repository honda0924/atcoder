n = gets.chomp.to_i
array = gets.split.map(&:to_i).sort
ans=1
array.each_with_index do |i, index|
  ans = ans * (i - index) % (10**9+7) 
end
puts ans

 