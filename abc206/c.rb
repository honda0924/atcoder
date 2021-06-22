n=gets.chomp.to_i
array=gets.split.map(&:to_i).sort
count_index = 0
ans = 0
array.each_with_index do |i, index|
  if i  == array[index + 1]
    count_index += 1
  else
    count_index += 1
    ans += count_index * (n - index - 1)
    count_index=0
  end
end

puts ans