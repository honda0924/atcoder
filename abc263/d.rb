n, l, r = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

array_sum = array.sum
array_min_sum = array_sum
x = 0
(0..n-1).each do |i|
  array_sum = array_sum + l - array[i]
  if array_sum < array_min_sum
    array_min_sum = array_sum
    x = i + 1
  end
end
(0..n-1).each do |i|
  if i < x
    array[i] = l
  end 
end
array_sum = array.sum
(0..n-1).reverse_each do |i|
  array_sum = array_sum + r - array[i]
  if array_sum < array_min_sum
    array_min_sum = array_sum
  end
end
puts array_min_sum