n,x,y,z=gets.split.map(&:to_i)
math_array = gets.split.map(&:to_i)
english_array = gets.split.map(&:to_i)
passed_students = []

score_array=[]
(1..n).each do |i|
  score_array << [i, math_array[i-1],english_array[i-1]]
end
score_array.sort_by!{|a| a[0]}
score_array.sort!{|a,b| b[1] <=> a[1]}

(0..x-1).each do |i|
  passed_students << score_array[i][0]
end
score_array.shift(x)

score_array.sort_by!{|a| a[0]}
score_array.sort!{|a,b| b[2]<=>a[2]}

(0..y-1).each do |i|
  passed_students << score_array[i][0]
end
score_array.shift(y)

score_array.sort_by!{|a| a[0]}
score_array.sort!{|a,b| b[1]+b[2] <=> a[1]+a[2]}

(0..z-1).each do |i|
  passed_students << score_array[i][0]
end

passed_students.sort.each do |i|
  puts i
end