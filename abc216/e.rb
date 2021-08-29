n,k = gets.split.map(&:to_i)
attractions = gets.split.map(&:to_i).sort.reverse
tmp = attractions.max
tmp_ride = 0
joy_value = tmp
count = 0
ans = 0
judgement = []
(1..tmp).each do |j|
  judgement << j
end
judgement.reverse!
judgement.each do |i|
  attractions.each do |a|
    if a >= i
      count += 1
    else
      break
    end
  end
  if count >= k
    break
  else
    tmp_ride = count
    joy_value = i
  end
end
attractions.each do |a|
  if a >= joy_value
    ans += (a + joy_value) * (a - joy_value + 1) / 2
  else
    break
  end
end

puts ans + (joy_value - 1) * (k - tmp_ride)
