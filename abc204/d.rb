n = gets.chomp.to_i
array = gets.split.map(&:to_i)
ans = array.sum % 2 == 0 ? array.sum / 2 : array.sum / 2 + 1
dp=Array.new(n + 1){Array.new(4000001,0)}

(0..n-1).each do |i|
  dp[i][0] = 1
end
(0..n-1).each do |i|
  (0..4000000).each do |j|
    
  end 
end

