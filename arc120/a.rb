n = gets.chomp.to_i
array = gets.split.map(&:to_i)
@dp = Array.new(n+1){Array.new(2,nil)}
@dp[0]=[0,0]
@array_max=array[0]
def max_add(n,array)
  return @dp[n] if @dp[n]
  if n==1
    @dp[n][0]=2*array[0]
    @dp[n][1]=2*array[0]
    return @dp[n]
  else
    if array[n-1]<@array_max
      @dp[n][0]=max_add(n-1)[1]
      @dp[n][1]=max_add(n-1)[1]+max_add(n-1)[0]+array[n-1]
      return @dp[n]
    else
      @dp[n][0]=2 * array[n-1]+max_add(n-1,array)[0] - @array_max
      @dp[n][1]=max_add(n-1,array)[1]+(n-1)*(array[n-1]-@array_max)+array[n-1]+@dp[n][0]
      @array_max=array[n-1]
      return @dp[n]
    end
  end
end
ans=max_add(n,array)
puts ans
@dp.each_with_index do |a,index|
  if index!=0
    puts a[1]
  end
end