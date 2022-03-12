n=gets.chomp.to_i
array=[]
r_array=[]
l_array=[]
n.times do
  a=gets.split(&:to_i)
  array << a
end
s_array=gets.chomp.split('')
(0..n-1).each do |i|
  if s_array[i]=='R'
    r_array << array[i]
  else
    l_array << array[i]
  end
end

r_array.each do |point|
  tmp_array=l_array.select { |a| a[1] == point[1] }
  if tmp_array!=[] && tmp_array.max > point[0] 
    puts 'Yes'
    exit
  end
end
puts 'No'
