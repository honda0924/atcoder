n,x=gets.split.map(&:to_i)
min_sum = 0
array = []
n.times do
  a,b=gets.split.map(&:to_i)
  min_sum += a
  array << b-a
end

d=x-min_sum

if d<0
  puts 'No'
  exit
end
@dp=Array.new(10001){Array.new(101, false)}
@dp[0][0] = true
def reachable(x,array)
  n=array.length
  (0..n-1).each do |i|
    (0..x).each do |j|
      if array[i] <=j
        @dp[i+1][j]=@dp[i][j-array[i]] || @dp[i][j]
      else
        @dp[i+1][j]=@dp[i][j]
      end
    end
  end
  return @dp[n][x]
end

puts reachable(d,array) ? 'Yes' : 'No'