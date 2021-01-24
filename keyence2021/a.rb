n=gets.chomp.to_i
a_array=gets.split.map(&:to_i)
b_array=gets.split.map(&:to_i)
a_max=a_array[0]
c=a_array[0]*b_array[0]
(0..n-1).each do |i|
  if i==0
    puts c
  else
    if a_max<a_array[i]
      a_max=a_array[i]
    end
    puts [c,a_max*b_array[i]].max
    c=[c,a_max*b_array[i]].max
  end
end
