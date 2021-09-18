n=gets.chomp.to_i
x,y = gets.split.map(&:to_i)
array=[]
ans = 
n.times do
  array << gets.split.map(&:to_i)
end
sum_x=0
sum_y=0
array.each do |a|
  sum_x += a[0]
  sum_y += a[1]
end
if sum_x < x || sum_y < y 
  puts -1
else

end