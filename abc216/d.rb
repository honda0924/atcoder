n,m = gets.split.map(&:to_i)
tubes = []
m.times do
  k = gets.chomp.to_i
  tube = gets.split.map(&:to_i)
  tubes << tube
end
