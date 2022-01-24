n,m = gets.split.map(&:to_i)

stations = gets.chomp.split(' ')
express = gets.chomp.split(' ')
stations.each do |station|
  if station == express[0]
    puts 'Yes'
    express.shift(1)
  else
    puts 'No'
  end
end