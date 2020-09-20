@dp=[]
@dp[0]=0
@dp[1]=0
@dp[2]=0


def sum_count(n)
  if n<3
    @dp[n]=0
    return 0
  else
    if @dp[n]
      return @dp[n]
    else
      sum=0
      (0..n-3).each do |k|


        sum += sum_count(k)
      end
      @dp[n]=1+sum
    end
  end
end
s=gets.chomp.to_i
puts sum_count(s)%1000000007
# puts @dp