l=gets.chomp.to_i
@dp=[]
def cut(n)
  if n==12
    @dp[n]=1
  else
    @dp[n]=cut(n-1)*(n-1)/(n-12)
  end
  return @dp[n]
end
puts cut(l)
