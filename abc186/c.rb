n=gets.chomp.to_i
sum=n
(1..n).each do |i|
  if i/10000==7 || (i%10000)/1000==7 || (i%1000)/100==7 || (i%100)/10==7 || i%10==7
    sum -= 1
  elsif i/(8**5)==7 || (i%(8**5))/(8**4)==7 || (i%(8**4))/(8**3)==7 || (i%(8**3))/(8**2)==7 || (i%(8**2))/8==7 || i%8==7
    sum -=1
  end
end
puts sum