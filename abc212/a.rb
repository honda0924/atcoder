a,b=gets.split.map(&:to_i)
if a>0 && b==0
  puts 'Gold'
elsif b>0 && a==0
  puts 'Silver'
else
  puts 'Alloy'
end