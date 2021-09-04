n=gets.chomp.to_i
p_array = gets.split.map(&:to_i)
q_array=Array.new(n,0)
p_array.each_with_index do |i,index|
  q_array[i - 1] = index + 1
end
puts q_array.join(' ')
