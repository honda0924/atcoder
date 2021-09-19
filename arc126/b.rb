n,m = gets.split.map(&:to_i)
lines = []
unique_lines = []
ans = 0
m.times do
  lines << gets.split.map(&:to_i)
end
lines.sort!{|a,b| a[1]<=>b[1]}
lines.sort!{|a,b| a[0]<=>b[0]}
a=-1
(0..m-1).each do |i|
  if lines[i][0] != a
    unique_lines << lines[i]
    a = lines[i][0]
  end
end
puts unique_lines

unique_lines.map!{|a| a[1]}
# puts unique_lines
target_array=unique_lines.uniq
# puts target_array
while target_array.length > 0
  b_min_index = target_array.index(target_array.min)
  tmp = target_array.length - b_min_index
  ans = [ans,tmp].max
  target_array.delete_at(b_min_index)
end
puts ans