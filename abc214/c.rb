n = gets.chomp.to_i
s_array = gets.split.map(&:to_i)
t_array = gets.split.map(&:to_i)

ans_array=Array.new(n)
min_index=t_array.index(t_array.min)
(min_index..n-1).each do |i|
  if i==min_index
    ans_array[i]=t_array[i]
  else
    ans_array[i]=[t_array[i],ans_array[i-1]+s_array[i-1]].min
  end
end
(0..min_index).each do |j|
  if j==0
    ans_array[j]=[t_array[j],ans_array[n-1]+s_array[n-1]].min
  else
    ans_array[j]=[t_array[j],ans_array[j-1]+s_array[j-1]].min
  end
end
ans_array.each do |a|
  puts a
end