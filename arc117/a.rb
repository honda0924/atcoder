a,b=gets.split.map(&:to_i)
ans_array=[]
(1..a-1).each  do |i|
  ans_array << i
end
ans_array << (500500 - (a - 1) * a / 2)
(1..b-1).each do |j|
  ans_array << (-1) * j
end
ans_array << (-1) * (500500 - (b - 1) * b / 2)

puts ans_array.join(' ')