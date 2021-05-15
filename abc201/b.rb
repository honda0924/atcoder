n = gets.chomp.to_i
mountains = []
n.times do
  mountain = gets.chomp.split
  mountains << mountain
end
mountains.map!{|x| [x[0], x[1].to_i]}
mountains.sort!{|a,b| b[1]<=>a[1]}
puts mountains[1][0]