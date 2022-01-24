array = []
n = gets.chomp.to_i
names = Hash.new(0)
n.times do
  array << gets.chomp
end
array.each do |str|
  names[str] += 1
end
puts names.key(names.values.max)
