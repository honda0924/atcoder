x,y=gets.chomp.split(".")
if y.to_i<=2
  puts x + "-"
elsif y.to_i<= 6
  puts x
else
  puts x + "+"
end
