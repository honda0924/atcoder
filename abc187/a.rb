a,b=gets.chomp.split

a_array=a.split("").map(&:to_i)
b_array=b.split("").map(&:to_i)

s_a=a_array.sum
s_b=b_array.sum

puts [s_a,s_b].max
