a,b,c,x=gets.split.map(&:to_f)
if x<=a
  puts 1
elsif b<x
  puts 0
else
  puts c/(b-a)
end