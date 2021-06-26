a,b,c,d = gets.split.map(&:to_i)
if b >= c * d 
  puts -1
else
  puts (a.to_f/(c * d - b)).ceil
end