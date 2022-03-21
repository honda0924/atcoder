s_array = gets.chomp.split(' ')
t_array = gets.chomp.split(' ')
diff = 0
(0..2).each do |i|
  if s_array[i] != t_array[i]
    diff += 1
  end
end
puts diff == 2 ? 'No' : 'Yes'