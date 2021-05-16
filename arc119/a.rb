n=gets.chomp.to_i
ans = n
max_b = Math.log(n,2).to_i
(0..max_b).each do |b|
  a=n / (2**b)
  c=n % (2**b)
  ans = [ans,a+b+c].min
end
puts ans