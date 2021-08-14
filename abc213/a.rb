a,b=gets.split.map(&:to_i)
ans_array=[]
ans=0
8.times do
  ans_array << a%2+b%2
  a=a/2
  b=b/2
end
ans_array.each_with_index do |i,index|
  ans += (i%2)*(2**index)
end
puts ans

