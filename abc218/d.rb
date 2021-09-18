n=gets.chomp.to_i
positions = []
ans = 0
n.times do
  position = gets.split.map(&:to_i)
  positions << position
end
diagonals = positions.combination(2).to_a
diagonals.each do |a|
  point1 = [a[0][1],a[1][0]]
  point2 = [a[1][0],a[0][1]]
  if positions.find(point1) && positions.find(point2)
    ans += 1
  end
end

puts ans