n=gets.chomp.to_i
@tfs=[]
n.times do
  tf=gets.chomp
  @tfs << tf
end
@dp=[]
def ans(n)
  if n==0
    @dp[n]=1
    return @dp[n]
  else
    if @tfs[n-1]=='AND'
      @dp[n]= ans(n-1)
    else
      @dp[n]=2**n + ans(n-1)
    end
    return @dp[n]
  end
end

puts ans(n)