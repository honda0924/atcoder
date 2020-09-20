n,x,@m=gets.split.map(&:to_i)
@dp=[]
@dp[1]=x
def sq_sum(n)
  if @dp[n]
    return @dp[n]
  else
    @dp[n]=sq_sum(n-1)**2% @m
  end
end
sum=0
(1..n).each do |s|
  sum += sq_sum(s)
end

puts sum