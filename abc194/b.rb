n = gets.chomp.to_i
a_array = []
b_array = []
ans_array = []

n.times do
  a, b = gets.split.map(&:to_i)
  a_array << a
  b_array << b
end
if a_array.index(a_array.min) == b_array.index(b_array.min)
  ans_array << (a_array.min + b_array.min)
  ans_array << [a_array.min, b_array.sort.reverse[1]].max
  ans_array << [a_array.sort.reverse[1], b_array.min].max
  puts ans_array.min
else
  puts [a_array.min, b_array.min].max
end

