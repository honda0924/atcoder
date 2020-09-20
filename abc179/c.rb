# @dp=[]
# @dp[0]=0
# @dp[1]=1
# def cnt_div(n)
#   i=0
#   (1..n).each do |j|
#     if n%j == 0
#       i += 1
#     end
#   end
#   @dp[n]=i
#   return i
# end
# def memo(n)

#   # if @dp[n]
#   #   return @dp[n]
#   # else
#   #   @dp[n] = memo(n-1) + cnt_div(n-1)
#   # end
# end
# n=gets.chomp.to_i
# (2..n).each do |i|
#   a=cnt_div(i)
# end

# puts @dp.sum

n=gets.chomp.to_i
sum=0
for i in (1..n) do
  sum+=(n-1)/i
end
puts sum