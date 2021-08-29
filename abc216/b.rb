n=gets.chomp.to_i
names = []
n.times do
  name = gets.chomp.split
  names << name
end
names.sort!{|a,b|a[1] <=> b[1]}.sort!{|a,b|a[0] <=> b[0]}
(0..n-2).each do |i|
  if names[i][0]==names[i+1][0] && names[i][1]==names[i+1][1]
    puts 'Yes'
    exit
  end
end
puts 'No'