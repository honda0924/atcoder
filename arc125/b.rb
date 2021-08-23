n = gets.chomp.to_i
ans = 0
tmp_x=1
(1..1000000).each do |i|
  if i**2 > n
    tmp_x = i - 1
    break
  end
end
ans = (tmp_x * (tmp_x + 1) / 2) % 998244353
((tmp_x + 1)..1000000).each do |i|
  ans_candidate = 0
  (1..i-1).each do |j|
    if i**2 - j**2 <= n
      ans = (ans + i - j) % 998244353
      ans_candidate = 1
      break
    end
  end
  if ans_candidate == 0
    break
  end
end
puts ans % 998244353
