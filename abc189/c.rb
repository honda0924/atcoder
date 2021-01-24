n=gets.chomp.to_i
orange_array=gets.split.map(&:to_i)
ans = 0
ans_max = 0
(0..n-1).each do |i|
  j=1
  while true do
    if i+j > n - 1 || orange_array[i]>orange_array[i+j] 
      break
    else
      j += 1
    end
  end
  k=1
  while true do
    if i-k < 0 || orange_array[i]>orange_array[i-k] 
      break
    else
      k += 1
    end
  end
  ans = (j + k - 1) * orange_array[i]
  if ans_max < ans
    ans_max = ans
  end
end
puts ans_max