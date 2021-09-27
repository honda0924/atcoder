n=gets.chomp.to_i
array=gets.split.map(&:to_i)

@dp=Array.new(n){Array.new(10, 0)}
@dp[0][array[0]] = 1

def operate_f(a,b)
  return (a+b)%10
end
def operate_g(a,b)
  return (a*b)%10
end
(1..n-1).each do |i|
  (0..9).each do |j|
    tmp_f=operate_f(j,array[i])
    tmp_g=operate_g(j,array[i])
    @dp[i][tmp_f] = (@dp[i][tmp_f] + @dp[i-1][j]) %  998244353
    @dp[i][tmp_g] = (@dp[i][tmp_g] + @dp[i-1][j]) %  998244353
  end
end

(0..9).each do |i|
  puts @dp[n-1][i]
end