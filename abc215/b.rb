n=gets.chomp.to_i
(0..60).each do |i|
  if 2**i > n
    puts i - 1
    break
  end 
end