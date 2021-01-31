n=gets.chomp.to_i
factor_array=[]
ans=0

root_n=Math.sqrt(n*2).to_i+1
(1..root_n).each do |i|
  if (2*n)%i==0
    factor_array << i
    factor_array << 2*n/i
  end
end
factor_array.uniq.each do |k|
  if  (((2*n)/k)-k+1)%2==0
    ans += 1
  end
end
puts ans
