n=gets.chomp.to_i
if n==1
  puts 0
  exit
end
positions=[]
count=0
n.times do
  position=gets.split.map(&:to_i)
  positions << position
end
args=positions.combination(2).to_a
args.each do |arg|
  if (arg[1][1]-arg[0][1]).abs<=(arg[1][0]-arg[0][0]).abs
    count +=1
  end
end
puts count
