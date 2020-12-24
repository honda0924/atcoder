n=gets.chomp.to_i
array=gets.split.map(&:to_i)
sum=0
# @dp=[]
# def diff_sum(n,array)
#   if n==0
#     @dp[0]=0
#   else
#     sub_array=array.slice(0,n-1).map{|i| (i-array[n-1]).abs}
#     @dp[n]=diff_sum(n-1,array)+sub_array.sum
#   end
#   return @dp[n]
# end

# puts diff_sum(n,array)

(0..n-1).each do |i|
  tmp_array=array.slice(i,n-i)
  sum += (tmp_array.map{|x| (x-array[i]).abs}).inject(:+)
end
puts sum