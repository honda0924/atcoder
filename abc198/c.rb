r,x,y=gets.split.map(&:to_i)
if Math.sqrt((x**2)+(y**2))<r
  puts 2
else
  puts (Math.sqrt((x**2) + (y**2))/r).ceil
end