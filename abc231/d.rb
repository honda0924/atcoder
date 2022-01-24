n,m = gets.split.map(&:to_i)
array = []
neighbors = Array.new(n, 0)
def is_neighbor(pair,neighbors)
 if neighbors[pair[0]] == 0
  if neighbors[pair[1]] == 0
    neighbors[pair[0]] = 1
    neighbors[pair[1]] = 10
  elsif neighbors[pair[1]] == 1
    neighbors[pair[0]] = 10
    neighbors[pair[1]] = 11
  elsif neighbors[pair[1]] == 10
    neighbors[pair[0]] = 1
    neighbors[pair[1]] = 11
  else
    puts 'No'
    exit
  end 
 elsif neighbors[pair[0]] == 1
  if neighbors[pair[1]] == 0
    neighbors[pair[0]] = 11
    neighbors[pair[1]] = 1
  elsif neighbors[pair[1]] == 1
    puts 'No'
    exit
  elsif neighbors[pair[1]] == 10
    neighbors[pair[0]] = 11
    neighbors[pair[1]] = 11
  else
    puts 'No'
    exit
  end
elsif neighbors[pair[0]] == 10
  if neighbors[pair[1]] == 0
    neighbors[pair[0]] = 11
    neighbors[pair[1]] = 10
  elsif neighbors[pair[1]] == 1
    neighbors[pair[0]] = 11
    neighbors[pair[1]] = 11
  elsif neighbors[pair[1]] == 10
    puts 'No'
    exit
  else
    puts 'No'
    exit
  end 
 else
  puts 'No'
  exit
 end
end
m.times do
  array << gets.split.map(&:to_i)
end
array.sort!{|a,b| a[0]<=>b[0]}
array.each do |pair|
  is_neighbor(pair,neighbors)
end
puts neighbors.count(11) != m ? 'Yes' : 'No' 

