n = gets.chomp.to_i
@array = gets.split.map(&:to_i)
@dp = []
@dp[0] = 0
@dp[1] = 0
@sum = []
(0..n-1).each do |i|
  if i == 0
    @sum[i] = @array[i]
  else
    @sum[i] = @sum[i-1] + @array[i]
  end
  
end


def squared(n)
  if n == 2
    @dp[n-1] = (@array[1] - @array[0])**2
    return @dp[n-1]
  else
    @dp[n-1] = squared(n-1) + n * ((@array[n-1] - @array[n-2])**2) + 2 * (@array[n-1] - @array[n-2]) * ((n -2) * @array[n-2] - @sum[n-2])
    return @dp[n-1]
  end
end
squared(n)
puts @dp