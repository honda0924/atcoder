@dp=[]
def fib2(n)
  if n <= 2
    return 1
  else
    if @dp[n]
      return @dp[n]
    else
      @dp[n] = fib2(n-1)+fib2(n-2)
    end
  end
end
n=gets.chomp.to_i
puts fib2(n)