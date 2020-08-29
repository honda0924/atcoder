@dp=[]
def calc_ans(n,array,dp)
  if n<2
    return 0
  else
    if dp[n]
      return dp[n]
    else
      sub_array=array.first(n-1)
      dp[n]=calc_ans(n-1,array,dp)+sub_array.sum*array[n-1]
    end
  end
end
n=gets.chomp.to_i
array=gets.split.map(&:to_i)
puts calc_ans(n,array,@dp)%(10**9+7)



#   @dp=[]
# def fib2(n)
#   if n <= 1
#     return 1
#   else
#     if @dp[n]
#       return @dp[n]
#     else
#       @dp[n] = fib2(n-1)+fib2(n-2)
#     end
#   end
# end
# n=gets.chomp.to_i
# puts fib2(n)