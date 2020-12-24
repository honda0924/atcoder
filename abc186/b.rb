h,w=gets.split.map(&:to_i)
array=[]
(1..h).each do |j|
  a=gets.split.map(&:to_i)
  array << a
end
a_min = array.flatten!.min
ans = array.map!{|i| i-a_min}
puts ans.sum



