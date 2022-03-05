n=gets.chomp.to_i
@dp=Array.new(1000001){Array.new(9,0)}
(1..9).each do |i|
  @dp[1][i]=1
end

def countNum(n)
  (2..n).each do |i|
    (1..9).each do |j|
      if j==1
        @dp[i][j]=(@dp[i-1][1]+@dp[i-1][2])%998244353
      elsif j==9
        @dp[i][j]=(@dp[i-1][8]+@dp[i-1][9])%998244353
      else
        @dp[i][j]=(@dp[i-1][j-1]+@dp[i-1][j]+@dp[i-1][j+1])%998244353
      end
    end
  end
  return @dp[n]
end

puts countNum(n).sum%998244353