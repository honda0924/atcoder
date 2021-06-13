x, y = gets.split.map(&:to_i)
array=[0,1,2]
puts x==y ? x : (array - [x,y])[0]