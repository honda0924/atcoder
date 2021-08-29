n=gets.chomp.to_i
operations = []
while n > 0
  if n % 2 == 0
    n /= 2
    operations << 'B'
  else
    n -= 1
    operations << 'A'
  end
end
puts operations.reverse.join
