s_array=gets.chomp.split("")
t_array=gets.chomp.split("")
(0..s_array.length - 2).each do |i|
  if s_array[i] != t_array[i]
    tmp = s_array[i]
    s_array[i] = s_array[i+1]
    s_array[i+1] = tmp
    break
  end
end
puts s_array.join == t_array.join ? 'Yes' : 'No'