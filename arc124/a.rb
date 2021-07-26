n,k = gets.split.map(&:to_i)
answer = 1
ans_array = []
constraints = []
k.times do
  constraint = gets.chomp.split
  constraints << constraint
end
n.times do
  ans_array << k
end
constraints.each do |a|
  if a[0] == 'L'
    (0..a[1].to_i-1).each do |i|
      ans_array[i] -= 1
    end
  else
    (a[1].to_i..n-1).each do |i|
      ans_array[i] -= 1
    end
  end
end
constraints.each do |a|
  ans_array[a[1].to_i - 1] = 1
end
ans_array.each do |ans|
  answer = (answer * ans) % 998244353
end

puts answer